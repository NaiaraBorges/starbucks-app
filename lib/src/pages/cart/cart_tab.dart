import 'package:flutter/material.dart';
import 'package:starbucks_app/src/models/cart_item_model.dart';
import 'package:starbucks_app/src/pages/base/base_screen.dart';
import 'package:starbucks_app/src/pages/cart/components/cart_tile.dart';
import 'package:starbucks_app/src/services/utils_services.dart';
import 'package:starbucks_app/src/config/app_data.dart' as app_data;

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final UtilsServices utilsServices = UtilsServices();

  void removeItemFromCart(CartItemModel cartItem) {
    setState(() {
      app_data.cartItems.remove(cartItem);
    });
  }

  double cartTotalPrice() {
    double total = 0;

    for (var item in app_data.cartItems) {
      total += item.totalPrice();
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Center(
            child: Image(
              width: 50,
              image: AssetImage(
                "assets/images/logo_appbar.png",
              ),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const BaseScreen();
                }));
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: GestureDetector(
                onTap: () {},
                child: const Badge(
                  label: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text('Carrinho',
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: app_data.cartItems.length,
                itemBuilder: (_, index) {
                  return CartTile(
                    cartItem: app_data.cartItems[index],
                    remove: removeItemFromCart,
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    utilsServices.priceToCurrency(cartTotalPrice()),
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(0, 98, 59, 10),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                      onPressed: () async {
                        bool? result = await showOrderConfirmation();
                        result;
                      },
                      child: const Text('Concluir pedido',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> showOrderConfirmation() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Confirmação'),
          content: const Text('Deseja realmente concluir o pedido?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}

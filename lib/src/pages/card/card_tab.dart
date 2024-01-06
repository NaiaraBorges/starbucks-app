import 'package:flutter/material.dart';
import 'package:starbucks_app/src/pages/card/components/card_button.dart';
import 'package:starbucks_app/src/pages/card/components/transaction_card.dart';
import 'package:starbucks_app/src/pages/cart/cart_tab.dart';
import 'package:starbucks_app/src/config/app_data.dart' as app_data;

class CardTab extends StatelessWidget {
  const CardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const SizedBox(
            child: Center(
              child: Image(
                width: 50,
                image: AssetImage(
                  "assets/images/logo_appbar.png",
                ),
              ),
            ),
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return const CartTab();
                  }));
                },
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 200, top: 30, left: 20),
              child: Text(
                'Wallet',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Easier transaction with StarWallet',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Image(
                width: 350,
                image: AssetImage(
                  "assets/images/starbucks_card.png",
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardButton(imagePath: 'assets/images/wallet.png'),
                CardButton(imagePath: 'assets/images/file.png'),
                CardButton(imagePath: 'assets/images/file.png'),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Top up     ', style: TextStyle(fontSize: 12)),
                Text('Portfolio    ', style: TextStyle(fontSize: 12)),
                Text('More     ', style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Recent Transaction'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: app_data.cartItems.length,
                itemBuilder: (_, index) {
                  return TransactionCard(
                    cartItem: app_data.cartItems[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

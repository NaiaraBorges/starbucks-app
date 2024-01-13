import 'package:flutter/material.dart';
import 'package:starbucks_app/src/models/cart_item_model.dart';
import 'package:starbucks_app/src/services/utils_services.dart';

class TransactionCard extends StatelessWidget {
  final CartItemModel cartItem;

  TransactionCard({super.key, required this.cartItem});
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.asset(
              cartItem.item.imgUrl,
              width: 30,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cartItem.item.itemName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              const Text('-R\$15,00',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 226, 102, 123),
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          subtitle: Text(
            'Yesterday, 16:09 PM',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}

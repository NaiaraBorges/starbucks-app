import 'package:flutter/material.dart';
import 'package:starbucks_app/src/models/cart_item_model.dart';
import 'package:starbucks_app/src/services/utils_services.dart';

class TransactionCard extends StatelessWidget {
  final CartItemModel cartItem;

  TransactionCard({super.key, required this.cartItem});
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Image.asset(
            cartItem.item.imgUrl,
            height: 60,
            width: 60,
          ),
          title: Text(
            cartItem.item.itemName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: const Text(
            'Yesterday, 16:09 PM',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ));
  }
}

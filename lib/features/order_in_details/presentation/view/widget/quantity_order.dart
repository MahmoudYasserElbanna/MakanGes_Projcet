import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/core/widgets/quantity_counter.dart';

class QuantityOrder extends StatefulWidget {
  const QuantityOrder({super.key});

  @override
  _QuantityOrderState createState() => _QuantityOrderState();
}

class _QuantityOrderState extends State<QuantityOrder> {
  int quantity = 1;
  double pricePerItem = 15.0;
  double totalPrice = 15.0;

  void updatePrice(int newQuantity) {
    setState(() {
      quantity = newQuantity;
      totalPrice = quantity * pricePerItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          // Using the QuantityCounter widget
          QuantityCounter(
            quantity: quantity,
            onQuantityChanged: updatePrice,
          ),
          CustomElevatedButton(
            label: 'Add to cart - \$$totalPrice',
            onPressed: () {
              if (totalPrice == 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please Add Quantity'),
                  ),
                );
              } else {
                GoRouter.of(context).push(AppRouters.myCartViewRoute);
              }
            },
          ),
        ],
      ),
    );
  }
}

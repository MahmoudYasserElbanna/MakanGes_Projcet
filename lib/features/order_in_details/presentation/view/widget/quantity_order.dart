import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';

class QuantityOrder extends StatefulWidget {
  const QuantityOrder({Key? key}) : super(key: key);

  @override
  _QuantityOrderState createState() => _QuantityOrderState();
}

class _QuantityOrderState extends State<QuantityOrder> {
  int quantity = 1;
  double pricePerItem = 15.0;
  double totalPrice = 15.0;

  void updatePrice() {
    totalPrice = quantity * pricePerItem;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Quantity Order', style: Styles.textStyle16),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: quantity > 0 ? Colors.black : Colors.grey,
                    ),
                    onPressed: quantity > 0
                        ? () {
                            setState(() {
                              quantity--;
                              updatePrice();
                            });
                          }
                        : null,
                  ),
                  Text('$quantity', style: const TextStyle(fontSize: 18)),
                  IconButton(
                    icon: const Icon(Icons.add_box_outlined),
                    onPressed: () {
                      setState(() {
                        quantity++;
                        updatePrice();
                      });
                    },
                  ),
                ],
              ),
            ],
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

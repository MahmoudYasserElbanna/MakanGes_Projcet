import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/cart_item.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartItem(
              imagePath: Assets.burgerImage1,
              description:
                  'Cheese Burger\nNo tomato - Free\nExtra patty +\$5\nExtra onion +\$1\nExtra cheese +\$2',
              price: 23,
              quantity: quantity,
              onQuantityChanged: (newQuantity) {
                setState(() {
                  quantity = newQuantity;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

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
      body: const MyCartViewBody(),
    );
  }
}

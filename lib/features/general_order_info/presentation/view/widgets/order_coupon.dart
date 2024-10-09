import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';

class OrderCoupon extends StatelessWidget {
  const OrderCoupon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Use This Coupon for free cheese!',
            style: Styles.textGreenStyle16.copyWith(fontSize: 14)),
        const CustomElevatedButton(label: 'Claim Now')
      ],
    );
  }
}

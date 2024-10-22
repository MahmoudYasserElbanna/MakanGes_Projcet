import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderCoupon extends StatelessWidget {
  const OrderCoupon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.discount,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 8),
            const Text(
              'You have 2 free delivery coupon',
              style: Styles.textStyle14,
            ),
          ],
        ),
        const Text(
          'Use Now',
          style: Styles.textGreenStyle16,
        ),
      ],
    );
  }
}

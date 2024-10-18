import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        Text('Use Coupon for free cheese!',
            style: Styles.textGreenStyle16.copyWith(fontSize: 14)),
        CustomElevatedButton(
          label: 'Claim Now',
          onPressed: () {
            GoRouter.of(context).push(AppRouters.orderInDetailsViewRoute);
          },
        )
      ],
    );
  }
}

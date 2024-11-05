import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderDeliveryTime extends StatelessWidget {
  const OrderDeliveryTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Your food will arrive in, ',
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          ),
          const TextSpan(
            text: '8min - 12min',
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}

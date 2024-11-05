import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.restaurant_rounded,
          color: kPrimaryColor,
          size: 36,
        ),
        const SizedBox(width: 12),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Anzay Burger',
              style: Styles.textStyle14,
            ),
            Text(
              'W. Gray St. Utica, Pennsylvania',
              style: Styles.textStyle14,
            ),
          ],
        )
      ],
    );
  }
}

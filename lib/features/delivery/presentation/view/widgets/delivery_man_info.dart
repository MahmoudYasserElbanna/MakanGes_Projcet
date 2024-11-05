import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';

class DeliveryManInfo extends StatelessWidget {
  const DeliveryManInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.deliveryMan,
        ),
        const SizedBox(width: 12),
        const Text(
          'Kadin Dokidis',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}

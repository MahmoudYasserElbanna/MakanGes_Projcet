import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderLocation extends StatelessWidget {
  const OrderLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_outlined, color: kPrimaryColor),
        const Text(
          'W. Gray St. Utica. Pennsylvania',
          style: Styles.textStyle12,
        )
      ],
    );
  }
}

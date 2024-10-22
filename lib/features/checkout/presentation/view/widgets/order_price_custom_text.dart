import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderPriceSummary extends StatelessWidget {
  const OrderPriceSummary({
    super.key,
    required this.text,
    required this.value,
  });
  final String text, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle16,
        ),
        Text(
          value,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}

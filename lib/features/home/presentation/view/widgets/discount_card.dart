import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    super.key,
    required this.discount,
  });

  final String? discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        discount!,
        style: Styles.textStyle12,
      ),
    );
  }
}

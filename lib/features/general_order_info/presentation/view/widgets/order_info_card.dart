import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({
    super.key,
    required this.title,
    required this.valueOf,
    required this.icon,
  });
  final String title, valueOf;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 4),
            Text(
              valueOf,
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          title,
          style: Styles.textStyle12SemiBold,
        )
      ],
    );
  }
}

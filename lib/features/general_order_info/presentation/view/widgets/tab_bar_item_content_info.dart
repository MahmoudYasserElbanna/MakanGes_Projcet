import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class ItemContentInfo extends StatelessWidget {
  const ItemContentInfo({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle16,
        ),
        Text(
          price,
          style: Styles.textGreenStyle16,
        ),
      ],
    );
  }
}

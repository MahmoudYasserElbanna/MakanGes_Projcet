import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderName extends StatelessWidget {
  const OrderName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Burger Anzey Extra\n',
                style: Styles.textStyle20,
              ),
              TextSpan(
                text: 'American, Fast food, burger',
                style: Styles.textStyle12,
              ),
            ],
          ),
        ),
        Icon(
          Icons.favorite_border_rounded,
        )
      ],
    );
  }
}

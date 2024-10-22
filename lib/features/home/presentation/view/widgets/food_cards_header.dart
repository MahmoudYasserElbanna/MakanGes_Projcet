import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class FoodCardsHeader extends StatelessWidget {
  const FoodCardsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Highest rating in town',
          style: Styles.textStyle20,
        ),
        Text(
          'View all',
          style: Styles.textGreenStyle16,
        ),
      ],
    );
  }
}

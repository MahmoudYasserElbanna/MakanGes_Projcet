import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderName extends StatefulWidget {
  const OrderName({
    super.key,
  });

  @override
  State<OrderName> createState() => _OrderNameState();
}

class _OrderNameState extends State<OrderName> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text.rich(
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
        GestureDetector(
          onTap: toggleFavorite,
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
            color: kPrimaryColor,
            size: 32,
          ),
        )
      ],
    );
  }
}

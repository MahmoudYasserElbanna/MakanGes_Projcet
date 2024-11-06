import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/quantity_counter.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/edit_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.quantity,
    required this.onQuantityChanged,
  });

  final String imagePath;
  final String description;
  final int price;
  final int quantity;
  final Function(int) onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      width: 96,
                      height: 96,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    description,
                    style: Styles.textStyle16
                        .copyWith(color: Colors.black.withOpacity(0.6)),
                  )
                ],
              ),
              Text(
                '\$$price',
                style: Styles.textGreenStyle16,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const EditButton(),
              QuantityCounter(
                quantity: quantity,
                onQuantityChanged: onQuantityChanged,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

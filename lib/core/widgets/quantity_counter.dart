import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

  final int quantity;
  final Function(int) onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Quantity Order', style: Styles.textStyle16),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.remove,
                color: quantity > 0 ? Colors.black : Colors.grey,
              ),
              onPressed:
                  quantity > 0 ? () => onQuantityChanged(quantity - 1) : null,
            ),
            Text('$quantity', style: const TextStyle(fontSize: 18)),
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () => onQuantityChanged(quantity + 1),
            ),
          ],
        ),
      ],
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class AdditionsToTheOrderItem extends StatefulWidget {
  const AdditionsToTheOrderItem(
      {super.key, required this.title, required this.isFree});
  final String title;
  final bool isFree;
  @override
  State<AdditionsToTheOrderItem> createState() =>
      _AdditionsToTheOrderItemState();
}

class _AdditionsToTheOrderItemState extends State<AdditionsToTheOrderItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Styles.textStyle14,
        ),
        Row(
          children: [
            Text(
              widget.isFree ? 'Free' : r'$' + Random().nextInt(20).toString(),
              style: Styles.textStyle16,
            ),
            IconButton(
              icon: Icon(
                isChecked
                    ? Icons.check_box_rounded
                    : Icons.check_box_outline_blank_rounded,
                color: isChecked ? Colors.green : null,
              ),
              onPressed: () {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

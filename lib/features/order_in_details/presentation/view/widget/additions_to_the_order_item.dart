import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class AdditionsToTheOrderItem extends StatefulWidget {
  const AdditionsToTheOrderItem({
    super.key,
    required this.title,
    required this.isFree,
    required this.isSelected,
    required this.onCheckedChanged,
  });

  final String title;
  final bool isFree;
  final bool isSelected;
  final ValueChanged<bool> onCheckedChanged;

  @override
  State<AdditionsToTheOrderItem> createState() =>
      _AdditionsToTheOrderItemState();
}

class _AdditionsToTheOrderItemState extends State<AdditionsToTheOrderItem> {
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
              widget.isFree
                  ? 'Free'
                  : r'$5', //+ Random().nextInt(20).toString(),
              style: Styles.textStyle16,
            ),
            IconButton(
              icon: Icon(
                widget.isSelected
                    ? Icons.check_box_rounded
                    : Icons.check_box_outline_blank_rounded,
                color: widget.isSelected ? Colors.green : null,
              ),
              onPressed: () {
                widget.onCheckedChanged(!widget.isSelected);
              },
            ),
          ],
        ),
      ],
    );
  }
}

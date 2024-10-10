import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_item_content_info.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({
    super.key,
    required this.title,
    required this.price,
    required this.description,
  });

  final String title;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemContentInfo(title: title, price: price),
        const SizedBox(height: 4),
        Text(
          description,
          style: Styles.textStyle12,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

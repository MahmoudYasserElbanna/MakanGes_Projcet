import 'package:flutter/material.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_image_decoration.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_item_body.dart';

class TabBarViewItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String description;

  const TabBarViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemImageDecoration(image: image),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ItemBody(
              title: title,
              price: price,
              description: description,
            ),
          ),
        ],
      ),
    );
  }
}

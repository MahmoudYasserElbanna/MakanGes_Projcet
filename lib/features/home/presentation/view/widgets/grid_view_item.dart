import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor.withOpacity(0.3),
        ),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Center(
              child: Image.asset(image),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Styles.textStyle12,
            ),
          ],
        ),
      ),
    );
  }
}

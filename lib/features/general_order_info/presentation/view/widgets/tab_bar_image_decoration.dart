import 'package:flutter/material.dart';

class ItemImageDecoration extends StatelessWidget {
  const ItemImageDecoration({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      child: Image.asset(
        image,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

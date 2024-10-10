import 'package:flutter/material.dart';

Widget buildTabBarViewContent({
  required int itemsCount,
  required IndexedWidgetBuilder itemBuilder,
}) {
  return GridView.builder(
    padding: const EdgeInsets.only(top: 8),
    itemCount: itemsCount,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // 2 items per row
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    ),
    itemBuilder: itemBuilder,
  );
}

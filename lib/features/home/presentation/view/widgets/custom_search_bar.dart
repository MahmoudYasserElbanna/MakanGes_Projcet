import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_vertical_divider.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SearchBar(
        constraints: const BoxConstraints(
          maxHeight: 56,
          maxWidth: double.infinity,
        ),
        elevation: MaterialStateProperty.all(1),
        hintText: 'Search food, drink, etc..',
        leading: IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: () {},
        ),
        trailing: [
          const CustomVerticalDivider(),
          IconButton(
            icon: const Icon(Icons.bookmark_outline_sharp),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

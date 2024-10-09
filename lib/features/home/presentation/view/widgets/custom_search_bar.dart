import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button_with_title.dart';
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
        leading: CustomIconButton(
          icon: Icons.search_outlined,
          onPressed: () {},
        ),
        trailing: [
          const CustomVerticalDivider(),
          CustomIconButton(
            icon: Icons.bookmark_outline_sharp,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

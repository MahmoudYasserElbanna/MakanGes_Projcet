import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_vertical_divider.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/personal_info_section.dart';

AppBar buildHomeViewAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: const PersonaInfo(),
    actions: [
      const CustomVerticalDivider(),
      IconButton(
        icon: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
      const CustomVerticalDivider(),
      IconButton(
        icon: const Icon(Icons.notifications_none),
        onPressed: () {},
      ),
    ],
  );
}

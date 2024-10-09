import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_icon_design.dart';
import 'package:makanges_app/core/widgets/custom_vertical_divider.dart';

AppBar buildHomeViewAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset(Assets.personalImage),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver To',
              style: Styles.textStyle12
                  .copyWith(color: const Color(0xFF333333).withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: kPrimaryColor,
                ),
                const Text(
                  'My Home',
                  style: Styles.textStyle12,
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ],
        )
      ],
    ),
    actions: [
      const CustomVerticalDivider(),
      CustomIconDesign(
        icon: Icons.shopping_cart_outlined,
        onPressed: () {},
      ),
      const CustomVerticalDivider(),
      CustomIconDesign(
        icon: Icons.notifications_none,
        onPressed: () {},
      ),
    ],
  );
}

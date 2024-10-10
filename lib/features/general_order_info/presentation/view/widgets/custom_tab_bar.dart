import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: const [
        Tab(text: 'Burger'),
        Tab(text: 'Anzay\'s Combo'),
        Tab(text: 'Chicken Burger'),
      ],
      labelColor: kPrimaryColor,
      dividerColor: kShadowFontColor,
      unselectedLabelColor: kShadowFontColor,
      indicatorColor: kPrimaryColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 3,
      labelStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
      unselectedLabelStyle: Styles.textStyle16,
      labelPadding: const EdgeInsets.all(0),
    );
  }
}

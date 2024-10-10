import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/build_tab_bar_view.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_view_item.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          buildTabBarViewContent(
            itemsCount: 4, // Replace with your item count
            itemBuilder: (context, index) {
              return TabBarViewItem(
                image: Assets.burgerImage2,
                title: 'Burger $index',
                price: '\$14',
                description: 'Made with a juicy, 100% beef patty',
              );
            },
          ),
          buildTabBarViewContent(
            itemsCount: 4,
            itemBuilder: (context, index) {
              return TabBarViewItem(
                image: Assets.burgerImage2,
                title: 'Combo $index',
                price: '\$14',
                description: 'Delicious combo meals.',
              );
            },
          ),
          buildTabBarViewContent(
            itemsCount: 4,
            itemBuilder: (context, index) {
              return TabBarViewItem(
                image: Assets.burgerImage2,
                title: 'Chicken Burger $index',
                price: '\$14',
                description: 'Crispy chicken burgers.',
              );
            },
          ),
        ],
      ),
    );
  }
}

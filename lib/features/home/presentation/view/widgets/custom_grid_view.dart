import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  final List<String> images = const [
    Assets.burgerIcon,
    Assets.drinksIcon,
    Assets.pizzaIcon,
    Assets.meatIcon,
    Assets.sushiIcon,
    Assets.promoIcon,
    Assets.tacoIcon,
    Assets.moreIcon,
  ];

  final List<String> titles = const [
    'Burger',
    'Drinks',
    'Pizza',
    'Meat',
    'Sushi',
    'Promo',
    'Taco',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => GridViewItem(
          image: images[index],
          title: titles[index],
        ),
      ),
    );
  }
}

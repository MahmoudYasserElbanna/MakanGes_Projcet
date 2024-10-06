import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_coupon_offer_card.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeViewAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomSearchBar(),
            SizedBox(height: 24),
            CustomCouponOfferCard(),
            SizedBox(height: 24),
            CustomGridView()
          ],
        ),
      ),
    );
  }
}

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

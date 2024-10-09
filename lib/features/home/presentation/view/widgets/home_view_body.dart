import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_coupon_offer_card.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/food_card_list_view.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_search_bar.dart';

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
            CustomGridView(),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Highest rating in town',
                  style: Styles.textStyle20,
                ),
                Text(
                  'View all',
                  style: Styles.textGreenStyle16,
                ),
              ],
            ),
            SizedBox(height: 16),
            FoodCardList(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

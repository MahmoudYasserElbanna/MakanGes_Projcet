import 'package:flutter/material.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_coupon_offer_card.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/food_card_list_view.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/food_cards_header.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/custom_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomSearchBar(),
          SizedBox(height: 24),
          CustomCouponOfferCard(),
          SizedBox(height: 24),
          CustomGridView(),
          SizedBox(height: 24),
          FoodCardsHeader(),
          SizedBox(height: 16),
          FoodCardList(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

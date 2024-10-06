import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}

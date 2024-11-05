import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/app_router.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: kPrimaryColor,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: const Color(0xFF22A641).withOpacity(0.3),
          color: Colors.grey,
          tabs: [
            GButton(
              icon: FontAwesomeIcons.houseChimney,
              text: 'Home',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.delivery_dining_outlined,
              iconSize: 28,
              text: 'Delivery',
              onPressed: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouters.deliveryInfoView);
              },
            ),
            GButton(
              icon: FontAwesomeIcons.heart,
              text: 'Favorite',
              onPressed: () {},
            ),
            GButton(
              icon: FontAwesomeIcons.user,
              text: 'Profile',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

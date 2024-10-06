import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';

import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 21,
              child: Image.asset(Assets.personalImage),
            ),
            const SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver To',
                  style: Styles.textStyle12.copyWith(
                      color: const Color(0xFF333333).withOpacity(0.7)),
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
          VerticalDivider(
            color: const Color(0xFF333333).withOpacity(0.3),
            endIndent: 16,
            indent: 16,
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () {
              // Add functionality for cart button
            },
          ),
          VerticalDivider(
            color: const Color(0xFF333333).withOpacity(0.3),
            endIndent: 16,
            indent: 16,
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.black,
            onPressed: () {
              // Add functionality for notifications button
            },
          ),
        ],
      ),
    );
  }
}

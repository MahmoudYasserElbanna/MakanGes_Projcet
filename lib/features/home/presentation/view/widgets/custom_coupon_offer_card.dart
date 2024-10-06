import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class CustomCouponOfferCard extends StatelessWidget {
  const CustomCouponOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 104,
      decoration: BoxDecoration(
        color: const Color(0xFF181818),
        borderRadius: BorderRadius.circular(12), // Cleaner BoxDecoration
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Text(
                'You have 2x free\ndelivery coupon!',
                style: Styles.textStyle20White,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    kPrimaryColor, // Easier, modern way to set the background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                maximumSize: const Size(164, 52),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Order Now',
                  style: Styles.textStyle20White,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

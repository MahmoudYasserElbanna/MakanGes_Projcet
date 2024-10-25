import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';

class CustomCouponOfferCard extends StatelessWidget {
  const CustomCouponOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF181818),
        borderRadius: BorderRadius.circular(12), // Cleaner BoxDecoration
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'You have 2x free\ndelivery coupon!',
              style: Styles.textStyle20White,
            ),
            CustomElevatedButton(
              label: 'Apply Now',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

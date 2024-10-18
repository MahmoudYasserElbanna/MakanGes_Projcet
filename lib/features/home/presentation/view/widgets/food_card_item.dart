import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/discount_card.dart';
import 'order_info_list_view.dart';

class FoodCardItem extends StatelessWidget {
  final String imageUrl;
  final String? discount;
  final String distance;
  final String time;
  final String title;
  final double rating;
  final String reviewCount;

  const FoodCardItem({
    super.key,
    required this.imageUrl,
    this.discount,
    required this.distance,
    required this.time,
    required this.title,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.generalOrderInfo);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    imageUrl,
                    height: 125,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                OrderInfo(
                  distance: distance,
                  time: time,
                  title: title,
                  rating: rating,
                  reviewCount: reviewCount,
                ),
              ],
            ),
            if (discount != null)
              Positioned(
                top: 8,
                left: 8,
                child: DiscountCard(discount: discount),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

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
    return Card(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$distance + $time',
                        style: const TextStyle(color: Colors.grey)),
                    const SizedBox(height: 4),
                    Text(title, style: Styles.textStyle16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          '$rating',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 4),
                        Text('- $reviewCount',
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (discount != null)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  discount!,
                  style: Styles.textStyle12,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

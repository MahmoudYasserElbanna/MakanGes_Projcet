import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.distance,
    required this.time,
    required this.title,
    required this.rating,
    required this.reviewCount,
  });

  final String distance;
  final String time;
  final String title;
  final double rating;
  final String reviewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$distance + $time', style: const TextStyle(color: Colors.grey)),
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
    );
  }
}

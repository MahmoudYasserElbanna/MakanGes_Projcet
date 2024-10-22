import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';

import 'food_card_item.dart';

class FoodCardList extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = const [
    {
      'image': Assets.pizzaImage,
      'discount': '30% Off',
      'distance': '1.02 km',
      'time': '10 Min',
      'title': 'Rumah Pizza Nih',
      'rating': 4.5,
      'reviewCount': '100+ review',
    },
    {
      'image': Assets.burgerImage,
      'discount': null,
      'distance': '1.52 km',
      'time': '5 Min',
      'title': 'Burger Anzey Extra',
      'rating': 4.3,
      'reviewCount': '192+ review',
    },
    {
      'image': Assets.comboPizzaImage,
      'discount': '20% Off',
      'distance': '1.5 km',
      'time': '15 Min',
      'title': 'Pizza Combo',
      'rating': 4.1,
      'reviewCount': '600+ review',
    },
  ];

  const FoodCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FoodCardItem(
              imageUrl: foodItem['image'],
              discount: foodItem['discount'],
              distance: foodItem['distance'],
              time: foodItem['time'],
              title: foodItem['title'],
              rating: foodItem['rating'],
              reviewCount: foodItem['reviewCount'],
            ),
          );
        },
      ),
    );
  }
}

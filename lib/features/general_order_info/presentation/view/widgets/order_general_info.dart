import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/order_card.dart';

class OrderGeneralInfo extends StatelessWidget {
  const OrderGeneralInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const OrderCard(
          title: 'Rating',
          valueOf: '4.5',
          icon: Icon(Icons.star, color: Colors.amber),
        ),
        OrderCard(
          title: 'Reviews',
          valueOf: '+1K',
          icon: Icon(Icons.feedback_outlined, color: kPrimaryColor),
        ),
        OrderCard(
          title: 'Delivery',
          valueOf: '15 Min',
          icon: Icon(
            Icons.delivery_dining_rounded,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}

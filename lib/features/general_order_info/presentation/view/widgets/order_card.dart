import 'package:flutter/material.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/order_info_card.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.title,
    required this.valueOf,
    required this.icon,
  });
  final String title, valueOf;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF22A641).withOpacity(0.3),
        ),
        child: OrderInfoCard(
          title: title,
          valueOf: valueOf,
          icon: icon,
        ),
      ),
    );
  }
}

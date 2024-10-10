import 'package:flutter/material.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/order_general_info_card.dart';

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
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.width * 0.048,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF22A641).withOpacity(0.3),
      ),
      child: OrderGeneralInfoCard(
        title: title,
        valueOf: valueOf,
        icon: icon,
      ),
    );
  }
}

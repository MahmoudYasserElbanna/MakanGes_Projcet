import 'package:flutter/material.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/additions_to_the_order_item.dart';

class AdditionsToTheOrderListView extends StatelessWidget {
  const AdditionsToTheOrderListView({
    super.key,
    required this.additions,
  });

  final List<Map<String, dynamic>> additions;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemCount: additions.length,
        itemBuilder: (context, index) {
          final item = additions[index];
          return AdditionsToTheOrderItem(
            title: item['title'],
            isFree: item['isFree'],
          );
        },
      ),
    );
  }
}

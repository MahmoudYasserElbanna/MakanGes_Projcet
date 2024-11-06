import 'package:flutter/material.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/additions_to_the_order_item.dart';

class AdditionsToTheOrderListView extends StatefulWidget {
  const AdditionsToTheOrderListView({
    super.key,
    required this.additions,
  });

  final List<Map<String, dynamic>> additions;

  @override
  State<AdditionsToTheOrderListView> createState() =>
      _AdditionsToTheOrderListViewState();
}

class _AdditionsToTheOrderListViewState
    extends State<AdditionsToTheOrderListView> {
  late Map<String, bool> selectedAdditions;

  @override
  void initState() {
    super.initState();
    selectedAdditions = {
      for (var addition in widget.additions) addition['title']: false,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemCount: widget.additions.length,
        itemBuilder: (context, index) {
          final item = widget.additions[index];
          final title = item['title'];
          final isFree = item['isFree'];
          final isSelected = selectedAdditions[title] ?? false;
          return AdditionsToTheOrderItem(
            title: title,
            isFree: isFree,
            isSelected: isSelected,
            onCheckedChanged: (isChecked) {
              setState(() {
                selectedAdditions[title] = isChecked;
              });
            },
          );
        },
      ),
    );
  }
}

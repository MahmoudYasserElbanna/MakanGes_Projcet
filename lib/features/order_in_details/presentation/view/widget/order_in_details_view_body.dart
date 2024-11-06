import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/general_order_view_header_icons.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_item_content_info.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/addition_to_the_order_list_view.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/quantity_order.dart';

class OrderInDetailsViewBody extends StatelessWidget {
  const OrderInDetailsViewBody({super.key});
  final List<Map<String, dynamic>> additions = const [
    {'title': 'Extra Cheese', 'isFree': false},
    {'title': 'Extra Fries', 'isFree': false},
    {'title': 'No Tomato', 'isFree': true},
    {'title': 'No Onion', 'isFree': true},
    {'title': 'Bacon', 'isFree': false},
    {'title': 'Pickles', 'isFree': true},
    {'title': 'Lettuce Wrap', 'isFree': true},
    {'title': 'Avocado', 'isFree': false},
    {'title': 'Gluten-Free Bun', 'isFree': false},
    {'title': 'Extra Patty', 'isFree': false},
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.burgerImage1,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GeneralOrderViewHeaderIcons(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                const ItemContentInfo(
                    title: 'Cheese Burger\n500 Cal.', price: r'$15'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  'Made with a juicy, 100% beef patty, cooked to perfection and topped with melted cheddar cheese, crisp lettuce, ripe tomato, and tangy pickles.',
                  style: Styles.textStyle16.copyWith(
                    color: const Color(0xFF333333).withOpacity(0.5),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Text(
                  'Customize my order',
                  style: Styles.textStyle20,
                ),
                AdditionsToTheOrderListView(additions: additions),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: QuantityOrder(),
          )
        ],
      ),
    );
  }
}

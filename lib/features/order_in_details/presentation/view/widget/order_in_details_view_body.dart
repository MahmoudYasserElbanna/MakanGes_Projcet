import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/general_order_view_header_icons.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/tab_bar_item_content_info.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/additions_to_the_order_item.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/widget/quantity_order.dart';

class OrderInDetailsViewBody extends StatelessWidget {
  const OrderInDetailsViewBody({super.key});

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
                const AdditionsToTheOrderItem(
                  isFree: false,
                  title: 'Extra Cheese Burger',
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: QuantityOrder(),
          ),
        ],
      ),
    );
  }
}

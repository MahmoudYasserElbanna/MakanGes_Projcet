import 'package:flutter/material.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/order_price_custom_text.dart';

class OrderSummaryBody extends StatelessWidget {
  const OrderSummaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      OrderPriceSummary(
        text: 'Subtotal',
        value: r'$23.00',
      ),
      SizedBox(height: 8),
      OrderPriceSummary(
        text: 'Total Tax:  ',
        value: r'$3.00',
      ),
      SizedBox(height: 8),
      OrderPriceSummary(
        text: 'Delivery: ',
        value: r'$12.00',
      ),
      SizedBox(height: 8),
      SizedBox(height: 16),
      OrderPriceSummary(
        text: 'Total: ',
        value: r'$48.00',
      ),
    ]);
  }
}

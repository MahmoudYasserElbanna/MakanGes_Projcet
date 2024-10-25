import 'package:flutter/material.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/custom_button_bloc_consumer.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          SizedBox(height: 16),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentMethodListView(),
          const SizedBox(height: 16),
          CustomElevatedButton(
            label: 'Continue',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

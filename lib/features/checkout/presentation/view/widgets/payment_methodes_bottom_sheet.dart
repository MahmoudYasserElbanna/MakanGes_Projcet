import 'package:flutter/material.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/custom_button_bloc_consumer.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({
    super.key,
  });

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  int selectedPaymentMethodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(
            onPaymentMethodSelected: (index) {
              setState(() {
                selectedPaymentMethodIndex = index;
              });
            },
          ),
          const SizedBox(height: 16),
          CustomButtonBlocConsumer(
            selectedPaymentMethodIndex: selectedPaymentMethodIndex,
          ),
        ],
      ),
    );
  }
}

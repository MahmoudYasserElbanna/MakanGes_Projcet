import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';
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
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomElevatedButton(
          label: 'Continue',
          onPressed: () {},
        );
      },
    );
  }
}

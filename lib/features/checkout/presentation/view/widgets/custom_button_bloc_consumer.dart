import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/helpers/execute_paypal_payment.dart';
import 'package:makanges_app/core/helpers/get_transaction_data.dart';
import 'package:makanges_app/core/helpers/payment_state_execution.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  final int selectedPaymentMethodIndex;

  const CustomButtonBlocConsumer({
    super.key,
    required this.selectedPaymentMethodIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          PaymentStateExecution.paymentSuccessExecute(context);
        } else if (state is StripePaymentFailed) {
          PaymentStateExecution.paymentFiledExecute(context);
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          label: 'Continue',
          isLoading: state is PaymentLoading,
          onPressed: () {
            if (selectedPaymentMethodIndex == 0) {
              // Stripe selected
              executeStripePayment(context);
            } else if (selectedPaymentMethodIndex == 1) {
              // PayPal selected
              var transactionData = getTransactionData();
              executePayPal(context, transactionData);
            } else if (selectedPaymentMethodIndex == 2) {
              // Paymob selected
              // Implement Paymob payment flow
            }
          },
        );
      },
    );
  }

  void executeStripePayment(BuildContext context) {
    StripePaymentIntentInputModel stripePaymentIntentInputModel =
        StripePaymentIntentInputModel(
      amount: 100,
      currency: 'usd',
      customerId: stripeCustomerId,
    );
    BlocProvider.of<StripePaymentCubit>(context)
        .makePayment(stripePaymentIntentInputModel);
  }
}

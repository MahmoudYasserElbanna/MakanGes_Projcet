import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          Navigator.of(context).pop();
          GoRouter.of(context).pushNamed(AppRouters.receiptView);
        } else if (state is StripePaymentFailed) {
          SnackBar(
            content: Text(state.errMessage.toString()),
            backgroundColor: Colors.red,
          );
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          label: 'Continue',
          onPressed: () {
            StripePaymentIntentInputModel stripePaymentIntentInputModel =
                StripePaymentIntentInputModel(
              amount: 100,
              currency: 'usd',
            );
            BlocProvider.of<StripePaymentCubit>(context).makePayment(
              stripePaymentIntentInputModel,
            );
          },
        );
      },
    );
  }
}

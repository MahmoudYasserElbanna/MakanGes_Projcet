import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';

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

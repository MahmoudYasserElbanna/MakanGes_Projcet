import 'package:dartz/dartz.dart';
import 'package:makanges_app/core/errors/failure.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required StripePaymentIntentInputModel stripePaymentIntentInputModel,
  });
}

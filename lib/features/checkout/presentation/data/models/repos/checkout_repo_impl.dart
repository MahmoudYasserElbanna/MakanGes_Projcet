import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:makanges_app/core/errors/failure.dart';
import 'package:makanges_app/core/utils/stripe_service.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/repos/checkout_repo.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_input_model.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required StripePaymentIntentInputModel
          stripePaymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
        stripePaymentIntentInputModel: stripePaymentIntentInputModel,
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}

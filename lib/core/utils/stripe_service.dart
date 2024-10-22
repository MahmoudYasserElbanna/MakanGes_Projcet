import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:makanges_app/core/utils/api_keys.dart';
import 'package:makanges_app/core/utils/api_service.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_model/stripe_payment_intent_model.dart';

class StripeService {
  Future<StripePaymentIntentModel> createPaymentIntent(
      StripePaymentIntentInputModel stripePaymentIntentInputModel) async {
    ApiService apiService = ApiService();
    var response = await apiService.post(
      body: stripePaymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.stripeApiKey,
      contentType: 'application/x-www-form-urlencoded',
    );
    var stripePaymentIntentModel =
        StripePaymentIntentModel.fromJson(response.data);
    return stripePaymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Mahmoud Yasser Elbanna',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  makePayment(
      {required StripePaymentIntentInputModel
          stripePaymentIntentInputModel}) async {
    var stripePaymentIntentModel = await createPaymentIntent(
      stripePaymentIntentInputModel,
    );
    await initPaymentSheet(
      paymentIntentClientSecret: stripePaymentIntentModel.clientSecret!,
    );
    await displayPaymentSheet();
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/api_keys.dart';
import 'package:makanges_app/core/utils/api_service.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_customer_ephemeral_key_model/ephemeral_key_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_customer_info_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_payment_intent_model/stripe_payment_intent_model.dart';

class StripeService {
  ApiService apiService = ApiService();
  Future<StripePaymentIntentModel> createPaymentIntent(
      StripePaymentIntentInputModel stripePaymentIntentInputModel) async {
    var response = await apiService.post(
      body: stripePaymentIntentInputModel.toJson(),
      url: '$stripeBaseUrl/payment_intents',
      token: ApiKeys.stripeApiKey,
      contentType: Headers.formUrlEncodedContentType,
    );
    var stripePaymentIntentModel =
        StripePaymentIntentModel.fromJson(response.data);
    return stripePaymentIntentModel;
  }

  Future initPaymentSheet({
    required StripeCustomerInfoInputModel stripeCustomerInfoInputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret:
            stripeCustomerInfoInputModel.paymentIntentClientSecret,
        customerId: stripeCustomerInfoInputModel.customerId,
        customerEphemeralKeySecret:
            stripeCustomerInfoInputModel.customerEphemeralKeySecret,
        merchantDisplayName: 'Mahmoud Yasser Elbanna',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  makePayment({
    required StripePaymentIntentInputModel stripePaymentIntentInputModel,
  }) async {
    StripePaymentIntentModel stripePaymentIntentModel =
        await createPaymentIntent(stripePaymentIntentInputModel);
    EphemeralKeyModel ephemeralKey = await createEphemeralKey(
      customerId: stripePaymentIntentInputModel.customerId!,
    );

    StripeCustomerInfoInputModel stripeCustomerInfoInputModel =
        StripeCustomerInfoInputModel(
      customerId: stripePaymentIntentInputModel.customerId!,
      customerEphemeralKeySecret: ephemeralKey.secret!,
      paymentIntentClientSecret: stripePaymentIntentModel.clientSecret!,
    );

    await initPaymentSheet(
      stripeCustomerInfoInputModel: stripeCustomerInfoInputModel,
    );
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      url: '$stripeBaseUrl/ephemeral_keys',
      body: {
        'customer': customerId,
      },
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Stripe-Version': '2023-08-16',
        'Authorization': 'Bearer ${ApiKeys.stripeApiKey}',
      },
    );
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}

class StripeCustomerInfoInputModel {
  final String customerId;
  final String customerEphemeralKeySecret;
  final String paymentIntentClientSecret;

  StripeCustomerInfoInputModel({
    required this.customerId,
    required this.customerEphemeralKeySecret,
    required this.paymentIntentClientSecret,
  });
}

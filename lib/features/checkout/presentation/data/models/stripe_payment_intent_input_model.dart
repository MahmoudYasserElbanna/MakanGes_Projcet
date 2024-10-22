class StripePaymentIntentInputModel {
  final String amount, currency;

  StripePaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}

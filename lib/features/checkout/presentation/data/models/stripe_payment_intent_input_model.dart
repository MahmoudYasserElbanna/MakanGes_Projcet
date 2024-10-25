class StripePaymentIntentInputModel {
  final String currency;
  final int amount;

  StripePaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {
      'amount': amount * 100,
      'currency': currency,
    };
  }
}

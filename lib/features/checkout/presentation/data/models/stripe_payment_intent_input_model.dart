class StripePaymentIntentInputModel {
  final String currency;
  final int amount;
  String? customerId;

  StripePaymentIntentInputModel({
    required this.amount,
    required this.currency,
    this.customerId,
  });

  toJson() {
    return {
      'amount': amount * 100,
      'currency': currency,
      'customer': customerId,
    };
  }
}

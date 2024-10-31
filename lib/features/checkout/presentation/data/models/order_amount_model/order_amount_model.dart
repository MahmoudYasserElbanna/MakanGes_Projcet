import 'details.dart';

class OrderAmountModel {
  final String? total;
  final String? currency;
  final OrderDetails? details;

  OrderAmountModel(
      {required this.total, required this.currency, required this.details});

  factory OrderAmountModel.fromJson(Map<String, dynamic> json) {
    return OrderAmountModel(
      total: json['total'] as String?,
      currency: json['currency'] as String?,
      details: json['details'] == null
          ? null
          : OrderDetails.fromJson(json['details'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
}

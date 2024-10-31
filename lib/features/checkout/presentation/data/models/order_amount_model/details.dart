class OrderDetails {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  OrderDetails({this.subtotal, this.shipping, this.shippingDiscount});

  factory OrderDetails.fromJson(Map<String, dynamic> json) => OrderDetails(
        subtotal: json['subtotal'] as String?,
        shipping: json['shipping'] as String?,
        shippingDiscount: json['shipping_discount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
}

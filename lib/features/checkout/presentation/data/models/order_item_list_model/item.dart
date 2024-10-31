class OrderItem {
  final String? name;
  final int? quantity;
  final String? price;
  String? currency;

  OrderItem({
    required this.name,
    required this.quantity,
    required this.price,
    this.currency,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        name: json['name'] as String?,
        quantity: json['quantity'] as int?,
        price: json['price'] as String?,
        currency: json['currency'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}

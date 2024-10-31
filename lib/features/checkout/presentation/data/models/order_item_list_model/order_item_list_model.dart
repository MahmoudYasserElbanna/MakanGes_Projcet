import 'item.dart';

class OrderItemListModel {
  List<OrderItem>? orders;

  OrderItemListModel({this.orders});

  factory OrderItemListModel.fromJson(Map<String, dynamic> json) {
    return OrderItemListModel(
      orders: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': orders?.map((e) => e.toJson()).toList(),
      };
}

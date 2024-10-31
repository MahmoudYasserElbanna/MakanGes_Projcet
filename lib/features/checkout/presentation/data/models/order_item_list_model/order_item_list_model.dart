import 'item.dart';

class OrderItemListModel {
  List<OrderItemModel>? orders;

  OrderItemListModel({this.orders});

  factory OrderItemListModel.fromJson(Map<String, dynamic> json) {
    return OrderItemListModel(
      orders: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': orders?.map((e) => e.toJson()).toList(),
      };
}

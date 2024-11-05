import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_amount_model/order_amount_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_item_list_model/item.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_item_list_model/order_item_list_model.dart';

import '../../features/checkout/presentation/data/models/paypal_models/order_amount_model/details.dart';

({OrderAmountModel amount, OrderItemListModel orderItemList})
    getTransactionData() {
  var orderAmount = OrderAmountModel(
    total: '100',
    currency: 'USD',
    details: OrderDetails(
      shipping: '0',
      shippingDiscount: 0,
      subtotal: '100',
    ),
  );

  List<OrderItemModel> orderItems = [
    OrderItemModel(
      name: 'Apple',
      quantity: 4,
      price: '10',
      currency: 'USD',
    ),
    OrderItemModel(
      name: 'Pineapple',
      quantity: 5,
      price: '12',
      currency: 'USD',
    ),
  ];

  OrderItemListModel orderItemListModel = OrderItemListModel(
    orders: orderItems,
  );
  return (
    amount: orderAmount,
    orderItemList: orderItemListModel,
  );
}

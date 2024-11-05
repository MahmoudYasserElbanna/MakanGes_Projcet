import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:makanges_app/core/functions/payment_state_execution.dart';
import 'package:makanges_app/core/services/api_keys.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_amount_model/order_amount_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_item_list_model/order_item_list_model.dart';

void executePayPal(
    BuildContext context,
    ({
      OrderAmountModel amount,
      OrderItemListModel orderItemList
    }) transactionData) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.paypalClientId,
      secretKey: ApiKeys.paypalSecretKey,
      transactions: [
        {
          "amount": transactionData.amount.toJson(),
          "description": "The payment transaction description.",
          "item_list": transactionData.orderItemList.toJson(),
        }
      ],
      note: 'PaypalCheckoutView',
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.pop(context);
        paymentSuccessExecute(context);
      },
      onError: (error) {
        log("onError: $error");
        Navigator.pop(context);
        paymentFiledExecute(context);
      },
      onCancel: () {
        // print('cancelled:');
        Navigator.pop(context);
        paymentCanceledExecute(context);
      },
    ),
  ));
}

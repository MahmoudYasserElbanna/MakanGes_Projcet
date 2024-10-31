import 'dart:developer';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/api_keys.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/core/widgets/custom_snack_bar.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_amount_model/details.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_amount_model/order_amount_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_item_list_model/item.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/paypal_models/order_item_list_model/order_item_list_model.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_models/stripe_payment_intent_input_model.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          GoRouter.of(context).push(AppRouters.receiptView);
          SnackBar snackBar = buildCustomSnackBar(
            title: 'Payment Success!',
            message: 'Payment Successful! 🎉 Thank you for your purchase',
            contentType: ContentType.success,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state is StripePaymentFailed) {
          Navigator.of(context).pop();
          SnackBar snackBar = buildCustomSnackBar(
            title: 'Payment Canceled!',
            message: 'No worries, you can complete it anytime you\'re ready.',
            contentType: ContentType.warning,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          label: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
          onPressed: () {
            // StripePaymentIntentInputModel stripePaymentIntentInputModel =
            //     StripePaymentIntentInputModel(
            //   amount: 100,
            //   currency: 'usd',
            //   customerId: stripeCustomerId,
            // );
            // BlocProvider.of<StripePaymentCubit>(context).makePayment(
            //   stripePaymentIntentInputModel,
            // );
            var transactionData = getTransactionData();
            executePayPal(context, transactionData);
          },
        );
      },
    );
  }

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
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
          Navigator.pop(context);
          SnackBar snackBar = buildCustomSnackBar(
            title: 'Payment Success!',
            message: 'Payment Successful! 🎉 Thank you for your purchase',
            contentType: ContentType.success,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
          Navigator.pop(context);
          SnackBar snackBar = buildCustomSnackBar(
            title: 'Payment Failed!',
            message: 'No worries, you can complete it anytime you\'re ready.',
            contentType: ContentType.failure,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
          Navigator.pop(context);
          SnackBar snackBar = buildCustomSnackBar(
            title: 'Payment Canceled!',
            message: 'No worries, you can complete it anytime you\'re ready.',
            contentType: ContentType.warning,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    ));
  }

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
}

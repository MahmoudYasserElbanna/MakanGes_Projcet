import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/widgets/custom_snack_bar.dart';

class PaymentStateExecution {
  static void paymentSuccessExecute(BuildContext context) {
    GoRouter.of(context).push(AppRouters.receiptView);
    SnackBar snackBar = buildCustomSnackBar(
      title: 'Payment Success!',
      message: 'Payment Successful! 🎉 Thank you for your purchase',
      contentType: ContentType.success,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void paymentFiledExecute(BuildContext context) {
    Navigator.of(context).pop();
    SnackBar snackBar = buildCustomSnackBar(
      title: 'Payment Failed!',
      message:
          'Oops! payment didn’t go through. Please double-check your details or try again.',
      contentType: ContentType.failure,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void paymentCanceledExecute(BuildContext context) {
    Navigator.pop(context);
    SnackBar snackBar = buildCustomSnackBar(
      title: 'Payment Canceled!',
      message: 'No worries, you can complete it anytime you\'re ready.',
      contentType: ContentType.warning,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

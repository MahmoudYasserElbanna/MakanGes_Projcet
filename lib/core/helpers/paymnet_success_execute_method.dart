import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/widgets/custom_snack_bar.dart';

void paymentSuccessExecute(BuildContext context) {
  GoRouter.of(context).push(AppRouters.receiptView);
  SnackBar snackBar = buildCustomSnackBar(
    title: 'Payment Success!',
    message: 'Payment Successful! 🎉 Thank you for your purchase',
    contentType: ContentType.success,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

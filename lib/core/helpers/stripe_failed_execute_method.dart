import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_snack_bar.dart';

void stripeFiledExecute(BuildContext context) {
  Navigator.of(context).pop();
  SnackBar snackBar = buildCustomSnackBar(
    title: 'Payment Failed!',
    message:
        'Oops! payment didn’t go through. Please double-check your details or try again.',
    contentType: ContentType.failure,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

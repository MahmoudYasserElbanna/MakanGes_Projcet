import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:makanges_app/core/utils/api_keys.dart';
import 'package:makanges_app/core/utils/app_router.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  Stripe.merchantIdentifier = 'YOUR_MERCHANT_ID';
  runApp(const MakanGesApp());
}

class MakanGesApp extends StatelessWidget {
  const MakanGesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

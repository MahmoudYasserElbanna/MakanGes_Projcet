import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:makanges_app/core/utils/api_keys.dart';
import 'package:makanges_app/core/utils/app_router.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
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

/*
  To Create Customer ID in the First you Need to create Customer Object when he create an Account
  Create Ephemeral Customer Key 'https://api.stripe.com/v1/ephemeral_key'
  -Header "Stripe-Version: 2023-08-16"
  -Method "POST"
  -Parameter "customer"="{{CUSTOMER_ID}}" // get it from payment intent input
  to create customer 'https://api.stripe.com/v1/customers'
  [1] create customer to get it's own id 
  [2] send this id to get Ephemeral Customer Key
 */

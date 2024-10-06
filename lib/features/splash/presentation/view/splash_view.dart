import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const SplashViewBody(),
    );
  }
}

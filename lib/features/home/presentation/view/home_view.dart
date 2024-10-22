import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_navigation_bar.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeViewAppBar(),
      body: const HomeViewBody(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

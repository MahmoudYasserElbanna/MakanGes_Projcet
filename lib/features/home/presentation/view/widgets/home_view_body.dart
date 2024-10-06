import 'package:flutter/material.dart';
import 'package:makanges_app/features/home/presentation/view/widgets/home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeViewAppBar(),
      body: const Column(
        children: [],
      ),
    );
  }
}

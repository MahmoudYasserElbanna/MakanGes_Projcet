import 'package:flutter/material.dart';
import 'package:makanges_app/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MakanGesApp());
}

class MakanGesApp extends StatelessWidget {
  const MakanGesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashView(),
      ),
    );
  }
}

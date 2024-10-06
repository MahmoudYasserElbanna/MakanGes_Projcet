import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/app_router.dart';

void main() {
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

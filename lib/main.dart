import 'package:flutter/material.dart';

void main() {
  runApp(const MakanGesApp());
}

class MakanGesApp extends StatelessWidget {
  const MakanGesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MakanGes App',
      home: Scaffold(
        body: Center(
          child: Text('MakanGes App'),
        ),
      ),
    );
  }
}

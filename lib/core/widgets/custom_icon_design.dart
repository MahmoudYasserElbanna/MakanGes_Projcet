import 'package:flutter/material.dart';

class CustomIconDesign extends StatelessWidget {
  const CustomIconDesign({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: Colors.black,
      onPressed: onPressed,
    );
  }
}

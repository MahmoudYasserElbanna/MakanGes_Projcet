import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: const Color(0xFF333333).withOpacity(0.3),
      endIndent: 16,
      indent: 16,
    );
  }
}

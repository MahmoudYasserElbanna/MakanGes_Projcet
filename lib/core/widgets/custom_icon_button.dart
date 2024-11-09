import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.width,
    this.bgColor,
    this.iconColor,
  });
  final IconData icon;
  final VoidCallback onPressed;
  final double? width;
  final Color? bgColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: width ?? 32,
        height: 32,
        decoration: ShapeDecoration(
          color: bgColor ?? const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: GestureDetector(
          onTap: onPressed,
          child: Icon(
            icon,
            color: iconColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}

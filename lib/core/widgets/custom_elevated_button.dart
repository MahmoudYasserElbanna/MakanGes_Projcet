import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
  });
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        backgroundColor:
            kPrimaryColor, // Easier, modern way to set the background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          label,
          style: Styles.textStyle20White,
        ),
      ),
    );
  }
}

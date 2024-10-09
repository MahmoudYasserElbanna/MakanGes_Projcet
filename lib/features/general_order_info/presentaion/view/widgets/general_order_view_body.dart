import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';

class GeneralOrderViewBody extends StatelessWidget {
  const GeneralOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.burgerImage1,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const CustomIconButton(),
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 48),
      child: Container(
        width: 32,
        height: 32,
        decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 24,
        ),
      ),
    );
  }
}

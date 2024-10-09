import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/widgets/cusotm_icon_button.dart';

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
        CustomIconButton(icon: Icons.chevron_left, onPressed: () {})
      ],
    );
  }
}

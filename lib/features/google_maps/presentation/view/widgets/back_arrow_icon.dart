import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 42,
      left: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        icon: Icons.arrow_back_rounded,
        onPressed: Navigator.of(context).pop,
      ),
    );
  }
}

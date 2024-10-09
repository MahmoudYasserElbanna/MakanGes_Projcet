import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';

class GeneralOrderViewHeaderIcons extends StatelessWidget {
  const GeneralOrderViewHeaderIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.chevron_left,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Row(
          children: [
            CustomIconButton(
              icon: Icons.search,
              onPressed: () {},
            ),
            CustomIconButton(
              icon: Icons.share_outlined,
              onPressed: () {},
            ),
            CustomIconButton(
              icon: Icons.info_outline_rounded,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

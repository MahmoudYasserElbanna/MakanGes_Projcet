import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:share_plus/share_plus.dart';

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
              onPressed: () {
                Share.share(
                  'Check out my order! Sharing my meal details with you 🍽️',
                  subject: 'Order Details Using MakanGes Application',
                );
              },
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

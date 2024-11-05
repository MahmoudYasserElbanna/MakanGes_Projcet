import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';

class ShareLocation extends StatelessWidget {
  const ShareLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.55,
      right: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        icon: Icons.location_searching_rounded,
        onPressed: () {},
      ),
    );
  }
}

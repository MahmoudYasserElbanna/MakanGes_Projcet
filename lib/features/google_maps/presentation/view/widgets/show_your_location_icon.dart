import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:share_plus/share_plus.dart';

class ShowLocation extends StatelessWidget {
  const ShowLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.03,
      right: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        icon: Icons.location_searching_rounded,
        onPressed: () {
          Share.share(
            'I\'m sharing my live order delivery location with you!',
            subject: 'Location',
          );
        },
      ),
    );
  }
}

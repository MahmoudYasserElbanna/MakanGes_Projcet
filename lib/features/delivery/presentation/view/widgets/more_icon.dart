import 'package:flutter/material.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';

class MoreIcon extends StatelessWidget {
  const MoreIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 42,
      right: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        icon: Icons.more_horiz,
        onPressed: () {
          const Drawer(
            backgroundColor: Colors.red,
            child: Text('data'),
          );
        },
      ),
    );
  }
}

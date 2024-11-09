import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_info_view_body.dart';

class DeliveryIcon extends StatelessWidget {
  const DeliveryIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 42,
      right: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        width: 64,
        bgColor: kPrimaryColor,
        icon: Icons.delivery_dining_rounded,
        iconColor: Colors.white,
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) => const DeliveryBottomSheetBody(),
          );
        },
      ),
    );
  }
}

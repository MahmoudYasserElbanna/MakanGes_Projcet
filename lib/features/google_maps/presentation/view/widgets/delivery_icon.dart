import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_bottom_sheet_body.dart';

class DeliveryIcon extends StatelessWidget {
  const DeliveryIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 42,
      right: MediaQuery.of(context).size.width * 0.03,
      child: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const DeliveryBottomSheetBody(),
            ),
          );
        },
        child: const Icon(
          Icons.delivery_dining_rounded,
          color: Colors.white,
        ),
      ),
    );
    // child: CustomIconButton(
    //   width: 64,
    //   bgColor: kPrimaryColor,
    //   icon: Icons.delivery_dining_rounded,
    //   iconColor: Colors.white,
    //   onPressed: () {
    //     showBottomSheet(
    //       context: context,
    //       builder: (context) => SizedBox(
    //         height: MediaQuery.of(context).size.height * 0.5,
    //         child: const DeliveryBottomSheetBody(),
    //       ),
    //     );
    //   },
    // ),
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_icon_stage.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/progress_line.dart';

class OrderProgressBar extends StatelessWidget {
  const OrderProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DeliveryIconStage(
          icon: Icons.receipt_long_rounded,
          isCompletedStage: true,
        ),
        const ProgressLine(
          isCompletedStage: true,
        ),
        const DeliveryIconStage(
          icon: Icons.soup_kitchen_outlined,
          isCompletedStage: true,
        ),
        const ProgressLine(
          isCompletedStage: true,
        ),
        const DeliveryIconStage(
          icon: Icons.delivery_dining_outlined,
          isCurrentStage: true,
        ),
        Container(
          width: 25,
          height: 3,
          color: kPrimaryColor,
        ),
        const ProgressLine(
          isCompletedStage: false,
        ),
        const DeliveryIconStage(
          icon: Icons.home_work_rounded,
          isNextStage: true,
        ),
      ],
    );
  }
}

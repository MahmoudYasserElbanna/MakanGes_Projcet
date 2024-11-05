import 'package:flutter/material.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_icon_stage.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/progress_line.dart';

class OrderProgressBar extends StatelessWidget {
  const OrderProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DeliveryIconStage(
          icon: Icons.receipt_long_rounded,
          isCompletedStage: true,
        ),
        ProgressLine(
          isCompletedStage: true,
        ),
        DeliveryIconStage(
          icon: Icons.delivery_dining_outlined,
          isCompletedStage: true,
        ),
        ProgressLine(
          isCompletedStage: true,
        ),
        DeliveryIconStage(
          icon: Icons.delivery_dining_outlined,
          isCurrentStage: true,
        ),
        ProgressLine(
          isCompletedStage: false,
        ),
        DeliveryIconStage(
          icon: Icons.home_work_rounded,
          isNextStage: true,
        ),
      ],
    );
  }
}

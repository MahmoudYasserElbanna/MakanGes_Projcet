import 'package:flutter/material.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_icon_stage.dart';

class CommunicationWithDriver extends StatelessWidget {
  const CommunicationWithDriver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DeliveryIconStage(
          icon: Icons.phone_outlined,
          isCurrentStage: true,
        ),
        SizedBox(width: 12),
        DeliveryIconStage(
          icon: Icons.comment_rounded,
          isCurrentStage: true,
        ),
      ],
    );
  }
}

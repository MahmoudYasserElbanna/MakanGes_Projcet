import 'package:flutter/material.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/communication_with_delivery.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_man_info.dart';

class DeliveryDriver extends StatelessWidget {
  const DeliveryDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DeliveryManInfo(),
        CommunicationWithDriver(),
      ],
    );
  }
}

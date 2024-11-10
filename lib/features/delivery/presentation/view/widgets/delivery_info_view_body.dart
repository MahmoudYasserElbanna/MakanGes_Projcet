import 'package:flutter/material.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/back_arrow_icon.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/delivery_icon.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/share_location.dart';
import 'package:makanges_app/features/google_maps/presentation/google_map_view.dart';

class DeliveryInfoViewBody extends StatelessWidget {
  const DeliveryInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GoogleMapView(),
        BackArrowIcon(),
        DeliveryIcon(),
        ShareLocation(),
      ],
    );
  }
}

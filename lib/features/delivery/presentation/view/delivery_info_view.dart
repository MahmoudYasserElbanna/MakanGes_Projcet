import 'package:flutter/material.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/custom_google_map_view.dart';

class DeliveryInfoView extends StatelessWidget {
  const DeliveryInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomGoogleMapView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/custom_google_map_view.dart';

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomGoogleMapView(),
    );
  }
}

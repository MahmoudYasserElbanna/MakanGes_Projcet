import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';

class CustomGoogleMapView extends StatelessWidget {
  const CustomGoogleMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(37.42796133580664, -122.08574965596259),
        zoom: cityZoomView,
      ),
    );
  }
}

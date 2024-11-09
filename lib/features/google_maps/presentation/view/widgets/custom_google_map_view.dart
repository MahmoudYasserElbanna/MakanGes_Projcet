import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';

class CustomGoogleMapView extends StatefulWidget {
  const CustomGoogleMapView({super.key});

  @override
  State<CustomGoogleMapView> createState() => _CustomGoogleMapViewState();
}

class _CustomGoogleMapViewState extends State<CustomGoogleMapView> {
  late CameraPosition initialCameraPosition;
  late LatLng initialPosition =
      const LatLng(30.246315510129456, 31.210137648452616);
  late GoogleMapController googleMapController;

  @override
  void initState() {
    initialCameraPosition = CameraPosition(
      target: initialPosition,
      zoom: streetZoomView,
    );
    initMapStyle();
    super.initState();
  }

  initMapStyle() {}
  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      onMapCreated: (controller) {
        googleMapController = controller;
      },
      onTap: (argument) {
        googleMapController.animateCamera(
          CameraUpdate.newLatLng(const LatLng(30.246315510129456, 31.2222)),
        );
      },
    );
  }
}

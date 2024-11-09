import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';

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
    super.initState();
  }

  initMapStyle() async {
    var nightMapStyle = await DefaultAssetBundle.of(context)
        .loadString(Assets.nightMapStylePath);
    googleMapController.setMapStyle(nightMapStyle);
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      zoomControlsEnabled: false,
      onMapCreated: (controller) {
        googleMapController = controller;
        initMapStyle();
      },
    );
  }
}

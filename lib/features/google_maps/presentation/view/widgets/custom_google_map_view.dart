import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:makanges_app/features/google_maps/presentation/data/models/branches_location_model.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/back_arrow_icon.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/delivery_icon.dart';

class CustomGoogleMapView extends StatefulWidget {
  const CustomGoogleMapView({super.key});

  @override
  State<CustomGoogleMapView> createState() => _CustomGoogleMapViewState();
}

class _CustomGoogleMapViewState extends State<CustomGoogleMapView> {
  late GoogleMapController googleMapController;
  final LatLng initialPosition = const LatLng(30.2463, 31.2101);
  LatLng? currentLatLng;
  final Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    MarkerManager().initializeMarkers(markers);
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    currentLatLng = await LocationHelper.getCurrentLocation();
    if (currentLatLng != null) {
      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: currentLatLng!, zoom: cityZoomView),
        ),
      );
    }
  }

  void _showMapStyleOptions(BuildContext context) {
    MapStyleHelper.showMapStyleOptions(context, googleMapController);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: initialPosition,
            zoom: cityZoomView,
          ),
          zoomControlsEnabled: false,
          markers: markers,
          onMapCreated: (controller) {
            googleMapController = controller;
            MapStyleHelper.setMapStyle(
              controller,
              Assets.nightMapStylePath,
              context,
            );
          },
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          left: MediaQuery.of(context).size.width * 0.03,
          child: CustomIconButton(
            icon: Icons.layers_outlined,
            onPressed: () => _showMapStyleOptions(context),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          right: MediaQuery.of(context).size.width * 0.03,
          child: CustomIconButton(
            icon: Icons.location_searching_rounded,
            onPressed: _getCurrentLocation,
          ),
        ),
        const BackArrowIcon(),
        const DeliveryIcon(),
      ],
    );
  }
}

class MapStyleHelper {
  static Future<void> setMapStyle(GoogleMapController controller,
      String? stylePath, BuildContext context) async {
    if (stylePath != null) {
      final style = await DefaultAssetBundle.of(context).loadString(stylePath);
      controller.setMapStyle(style);
    } else {
      controller.setMapStyle(null);
    }
  }

  static void showMapStyleOptions(
      BuildContext context, GoogleMapController controller) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildMapStyleOption(context, 'Lite Map', null, controller),
          _buildMapStyleOption(
              context, 'Retro Map', Assets.retroMapStylePath, controller),
          _buildMapStyleOption(
              context, 'Night Map', Assets.nightMapStylePath, controller),
        ],
      ),
    );
  }

  static ListTile _buildMapStyleOption(
    BuildContext context,
    String title,
    String? stylePath,
    GoogleMapController controller,
  ) {
    return ListTile(
      title: Text(title),
      onTap: () async {
        await setMapStyle(controller, stylePath, context);
        Navigator.pop(context);
      },
    );
  }
}

class MarkerManager {
  void initializeMarkers(Set<Marker> markers) {
    markers.addAll(
      branchesLocation.map((branch) {
        return Marker(
          markerId: MarkerId(branch.id.toString()),
          position: branch.latLng,
          infoWindow: InfoWindow(title: branch.name),
        );
      }).toSet(),
    );
  }
}

class LocationHelper {
  static Future<LatLng?> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      LatLng currentLatLng = LatLng(position.latitude, position.longitude);
      log('Current location: $currentLatLng');
      return currentLatLng;
    } catch (e) {
      print('Error getting location: $e');
      return null;
    }
  }
}

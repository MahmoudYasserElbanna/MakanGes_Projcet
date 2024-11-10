import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/google_maps/presentation/view/functions/get_your_current_loaction.dart';
import 'package:makanges_app/features/google_maps/presentation/view/functions/init_map_markers.dart';
import 'package:makanges_app/features/google_maps/presentation/view/functions/set_map_styles.dart';
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
    InitMapMarker().initializeMarkers(markers);
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  Future<void> getCurrentLocation() async {
    currentLatLng = await GetCurrentLocation.getCurrentLocation();
    if (currentLatLng != null) {
      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: currentLatLng!, zoom: cityZoomView),
        ),
      );
    }
  }

  void showMapStyleOptions(BuildContext context) {
    SetMapStyle.showMapStyleOptions(context, googleMapController);
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
            SetMapStyle.setMapStyle(
              controller,
              Assets.nightMapStylePath,
              context,
            );
          },
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.03,
            child: FloatingActionButton(
              onPressed: () => showMapStyleOptions(context),
              child: const Icon(
                Icons.layers_outlined,
                size: 32,
              ),
            )
            // child: CustomIconButton(
            //   icon: Icons.layers_outlined,
            //   onPressed: () => showMapStyleOptions(context),
            // ),
            ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          right: MediaQuery.of(context).size.width * 0.03,
          child: FloatingActionButton(
            onPressed: getCurrentLocation,
            child: const Icon(
              Icons.location_searching_rounded,
              size: 32,
            ),
          ),
          // child: CustomIconButton(
          //   icon: Icons.location_searching_rounded,
          //   onPressed: getCurrentLocation,
          // ),
        ),
        const BackArrowIcon(),
        const DeliveryIcon(),
      ],
    );
  }
}

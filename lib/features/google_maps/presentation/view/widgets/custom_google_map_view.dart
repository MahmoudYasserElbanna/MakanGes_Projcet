import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:makanges_app/features/google_maps/presentation/data/models/branches_location_model.dart';

class CustomGoogleMapView extends StatefulWidget {
  const CustomGoogleMapView({super.key});

  @override
  State<CustomGoogleMapView> createState() => _CustomGoogleMapViewState();
}

class _CustomGoogleMapViewState extends State<CustomGoogleMapView> {
  late GoogleMapController googleMapController;
  final LatLng initialPosition = const LatLng(30.2463, 31.2101);
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _initializeMarkers();
  }

  Future<void> setMapStyle(String? stylePath) async {
    if (stylePath != null) {
      final style = await DefaultAssetBundle.of(context).loadString(stylePath);
      googleMapController.setMapStyle(style);
    } else {
      googleMapController.setMapStyle(null); // Default style
    }
  }

  void _initializeMarkers() {
    markers = branchesLocation.map((branch) {
      return Marker(
        markerId: MarkerId(branch.id.toString()),
        position: branch.latLng,
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: branch.name),
      );
    }).toSet();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
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
            setMapStyle(Assets.nightMapStylePath); // Default style on init
          },
        ),
        Positioned(
          bottom: 26,
          left: 12,
          child: CustomIconButton(
            icon: Icons.layers_outlined,
            onPressed: () {
              _showMapStyleMenu(context);
            },
          ),
        ),
      ],
    );
  }

  void _showMapStyleMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        0,
        MediaQuery.of(context).size.height - 200,
        MediaQuery.of(context).size.width,
        0,
      ),
      items: [
        buildPopupMenuItem('Normal', null),
        buildPopupMenuItem('Retro', Assets.retroMapStylePath),
        buildPopupMenuItem('Night Mode', Assets.nightMapStylePath),
      ],
    );
  }

  PopupMenuItem<String> buildPopupMenuItem(String title, String? stylePath) {
    return PopupMenuItem<String>(
      value: title,
      child: Text(title),
      onTap: () => setMapStyle(stylePath),
    );
  }
}

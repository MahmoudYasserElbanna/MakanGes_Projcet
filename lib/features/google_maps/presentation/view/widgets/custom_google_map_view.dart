import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:makanges_app/features/google_maps/presentation/data/models/branches_location_model.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/back_arrow_icon.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/delivery_icon.dart';
import 'package:makanges_app/features/google_maps/presentation/view/widgets/show_your_location_icon.dart';

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
    initializeMarkers();
  }

  Future<void> setMapStyle(String? stylePath) async {
    if (stylePath != null) {
      final style = await DefaultAssetBundle.of(context).loadString(stylePath);
      googleMapController.setMapStyle(style);
    } else {
      googleMapController.setMapStyle(null); // Default style
    }
  }

  void initializeMarkers() {
    markers = branchesLocation.map((branch) {
      return Marker(
        markerId: MarkerId(branch.id.toString()),
        position: branch.latLng,
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: branch.name),
      );
    }).toSet();
  }

  void showMapStyleOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMapStyleOption('Lite Map', null),
          buildMapStyleOption('Retro Map', Assets.retroMapStylePath),
          buildMapStyleOption('Night Map', Assets.nightMapStylePath),
        ],
      ),
    );
  }

  ListTile buildMapStyleOption(String title, String? stylePath) {
    return ListTile(
      title: Text(title),
      onTap: () async {
        await setMapStyle(stylePath);
        Navigator.pop(context);
      },
    );
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
          bottom: MediaQuery.of(context).size.height * 0.03,
          left: MediaQuery.of(context).size.width * 0.03,
          child: CustomIconButton(
            icon: Icons.layers_outlined,
            onPressed: showMapStyleOptions,
          ),
        ),
        const ShowLocation(),
        const BackArrowIcon(),
        const DeliveryIcon()
      ],
    );
  }
}

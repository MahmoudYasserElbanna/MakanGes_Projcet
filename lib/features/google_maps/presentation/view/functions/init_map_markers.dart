import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/features/google_maps/presentation/data/models/branches_location_model.dart';

class InitMapMarker {
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

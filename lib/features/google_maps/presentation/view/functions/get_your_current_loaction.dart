import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetCurrentLocation {
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

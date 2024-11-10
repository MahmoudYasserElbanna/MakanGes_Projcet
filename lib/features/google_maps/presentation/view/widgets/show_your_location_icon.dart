import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:makanges_app/core/widgets/custom_icon_button.dart';
import 'package:share_plus/share_plus.dart';

class ShowLocationIcon extends StatelessWidget {
  const ShowLocationIcon({
    super.key,
  });

  Future<Position> getCurrentLocation() async {
    bool servicesLocation = await Geolocator.isLocationServiceEnabled();
    if (!servicesLocation) {
      return Future.error('Location Services are Disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Permissions are Denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location Permissions are Denied.');
    }
    return Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.03,
      right: MediaQuery.of(context).size.width * 0.03,
      child: CustomIconButton(
        icon: Icons.location_searching_rounded,
        onPressed: () {
          Share.share(
            'I\'m sharing my live order delivery location with you!',
            subject: 'Location',
          );
        },
      ),
    );
  }
}

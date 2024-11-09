import 'package:flutter/material.dart';
import 'package:makanges_app/features/google_maps/presentation/google_map_view.dart';

class GMap extends StatelessWidget {
  const GMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.61,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
      ),
      child: const GoogleMapView(),
    );
  }
}

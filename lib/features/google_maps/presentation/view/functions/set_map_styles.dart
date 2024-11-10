import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makanges_app/core/utils/assets.dart';

class SetMapStyle {
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
          buildMapStyleOption(context, 'Lite Map', null, controller),
          buildMapStyleOption(
              context, 'Retro Map', Assets.retroMapStylePath, controller),
          buildMapStyleOption(
              context, 'Night Map', Assets.nightMapStylePath, controller),
        ],
      ),
    );
  }

  static ListTile buildMapStyleOption(
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

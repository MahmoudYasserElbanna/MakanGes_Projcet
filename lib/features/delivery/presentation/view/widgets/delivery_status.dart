import 'package:flutter/widgets.dart';
import 'package:makanges_app/core/utils/styles.dart';

class DeliveryStatusText extends StatelessWidget {
  const DeliveryStatusText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'On Delivery!',
      style: Styles.textStyle20,
    );
  }
}

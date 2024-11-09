import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/order_delivery_time.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/order_progress_bar.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_details.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_driver.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_status.dart';

class DeliveryBottomSheetBody extends StatelessWidget {
  const DeliveryBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width * 0.05;
    final smallSpacing = MediaQuery.of(context).size.height * 0.01;
    final mediumSpacing = MediaQuery.of(context).size.height * 0.02;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OrderProgressBar(),
          SizedBox(height: mediumSpacing),
          const DeliveryStatusText(),
          const OrderDeliveryTime(),
          SizedBox(height: mediumSpacing),
          const DeliveryDriver(),
          SizedBox(height: mediumSpacing),
          const Text(
            'Delivery Details',
            style: Styles.textStyle20,
          ),
          SizedBox(height: smallSpacing),
          const DeliveryDetails(),
          const Spacer(),
          CustomElevatedButton(label: 'Track Order', onPressed: () {}),
          SizedBox(height: mediumSpacing),
        ],
      ),
    );
  }
}

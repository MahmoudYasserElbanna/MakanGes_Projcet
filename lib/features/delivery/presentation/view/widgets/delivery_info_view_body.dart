import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/back_arrow_icon.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/delivery_icon_stage.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/more_icon.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/order_progress_bar.dart';
import 'package:makanges_app/features/delivery/presentation/view/widgets/share_location.dart';

class DeliveryInfoViewBody extends StatelessWidget {
  const DeliveryInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.mapImagePng,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          fit: BoxFit.cover,
        ),
        const BackArrowIcon(),
        const MoreIcon(),
        const ShareLocation(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.6 + 24),
              const OrderProgressBar(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                'On Delivery!',
                style: Styles.textStyle20,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your food will arrive in, ',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    const TextSpan(
                      text: '8min - 12min',
                      style: Styles.textStyle14,
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeliveryManInfo(),
                  CommunicationWithDriver(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DeliveryManInfo extends StatelessWidget {
  const DeliveryManInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.deliveryMan,
        ),
        const SizedBox(width: 12),
        const Text(
          'Kadin Dokidis',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}

class CommunicationWithDriver extends StatelessWidget {
  const CommunicationWithDriver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DeliveryIconStage(
          icon: Icons.phone_outlined,
          isCurrentStage: true,
        ),
        SizedBox(width: 12),
        DeliveryIconStage(
          icon: Icons.comment_rounded,
          isCurrentStage: true,
        ),
      ],
    );
  }
}

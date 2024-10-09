import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/coupon_sectoin.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/general_order_view_header_icons.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/order_general_info.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/widgets/order_name.dart';
import 'order_location.dart';

class GeneralOrderViewBody extends StatelessWidget {
  const GeneralOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.burgerImage1,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GeneralOrderViewHeaderIcons(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              const OrderName(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const OrderLocation(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const OrderGeneralInfo(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const CouponSection(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ],
    );
  }
}

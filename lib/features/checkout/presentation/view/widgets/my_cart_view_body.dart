import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';
import 'package:makanges_app/core/widgets/custom_elevated_button.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/cart_item.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/order_coupon.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/order_summary_body.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_methodes_bottom_sheet.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartItem(
                imagePath: Assets.burgerImage1,
                description:
                    'Cheese Burger\nNo tomato - Free\nExtra patty +\$5\nExtra onion +\$1\nExtra cheese +\$2',
                price: 23,
                quantity: quantity,
                onQuantityChanged: (newQuantity) {
                  setState(() {
                    quantity = newQuantity;
                  });
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Divider(thickness: 2),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                'Order Summary',
                style: Styles.textStyle20,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const OrderSummaryBody(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const OrderCoupon(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomElevatedButton(
                  label: 'Order Now',
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      useSafeArea: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const PaymentMethodBottomSheet();
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethodsImages = const [
    'assets/images/cardPayment.svg',
    'assets/images/paypalPayment.svg',
    'assets/images/applePayment.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: paymentMethodsImages.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: PaymentMethodItem(
              isActive: activeIndex == index,
              image: paymentMethodsImages[index],
            ),
          );
        },
      ),
    );
  }
}

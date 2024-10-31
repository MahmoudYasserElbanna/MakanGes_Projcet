import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  final ValueChanged<int> onPaymentMethodSelected;

  const PaymentMethodListView({
    super.key,
    required this.onPaymentMethodSelected,
  });

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethodsImages = const [
    Assets.cardPayment,
    Assets.paypalPayment,
    Assets.paymobPayment,
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
              setState(() {
                activeIndex = index;
              });
              widget.onPaymentMethodSelected(activeIndex);
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

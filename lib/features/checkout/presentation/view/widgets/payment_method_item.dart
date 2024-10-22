import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makanges_app/constants.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.image,
    this.isActive = false,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 102,
        height: 64,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50, color: isActive ? kPrimaryColor : Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: [
            BoxShadow(
              color: isActive ? kPrimaryColor : Colors.grey,
              blurRadius: 4,
            )
          ],
        ),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}

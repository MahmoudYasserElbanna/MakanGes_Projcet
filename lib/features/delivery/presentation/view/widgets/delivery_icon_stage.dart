import 'package:flutter/material.dart';

class DeliveryIconStage extends StatelessWidget {
  const DeliveryIconStage({
    super.key,
    required this.icon,
    this.isCompletedStage = false,
    this.isCurrentStage = false,
    this.isNextStage = false,
  });
  final IconData icon;
  final bool isCompletedStage;
  final bool isCurrentStage;
  final bool isNextStage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: isCompletedStage
            ? Colors.transparent
            : isCurrentStage
                ? Colors.green
                : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: isCompletedStage
              ? Colors.green
              : isCurrentStage
                  ? Colors.green
                  : Colors.grey,
          width: 2,
        ),
      ),
      child: Icon(
        icon,
        color: isCompletedStage
            ? Colors.green
            : isCurrentStage
                ? Colors.white
                : isNextStage
                    ? Colors.grey
                    : Colors.green,
      ),
    );
  }
}

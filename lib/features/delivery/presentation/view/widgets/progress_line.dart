import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.isCompletedStage = false,
  });
  final bool isCompletedStage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: MediaQuery.of(context).size.width * 0.11,
      color: isCompletedStage ? kPrimaryColor : Colors.grey,
    );
  }
}

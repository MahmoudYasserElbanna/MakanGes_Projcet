import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.isCompletedStage = false,
  });
  final bool isCompletedStage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: MediaQuery.of(context).size.width * 0.14,
      color: isCompletedStage ? Colors.green : Colors.grey,
    );
  }
}

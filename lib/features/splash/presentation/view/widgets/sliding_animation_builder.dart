import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class SlidingAnimationBuilder extends StatelessWidget {
  const SlidingAnimationBuilder({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            textAlign: TextAlign.center,
            'Delivered To You',
            style: Styles.textStyle24,
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/features/splash/presentation/view/widgets/sliding_animation_builder.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Assets.logo,
          height: 125,
          width: 125,
        ),
        SlidingAnimationBuilder(slidingAnimation: slidingAnimation),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRouters.homeViewRoute);
      },
    );
  }
}

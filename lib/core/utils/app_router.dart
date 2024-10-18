import 'package:go_router/go_router.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/general_order_view.dart';
import 'package:makanges_app/features/home/presentation/view/home_view.dart';
import 'package:makanges_app/features/splash/presentation/view/splash_view.dart';

abstract class AppRouters {
  static const String splashViewRoute = '/'; //mean the first screen
  static const String homeViewRoute = '/homeView';
  static const String generalOrderInfoViewRoute = '/generalOrderInfoViewRoute';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: generalOrderInfoViewRoute,
        builder: (context, state) => const GeneralOrderView(),
      )
    ],
  );
}

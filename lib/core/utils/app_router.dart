import 'package:go_router/go_router.dart';
import 'package:makanges_app/features/checkout/presentation/view/my_cart_view.dart';
import 'package:makanges_app/features/general_order_info/presentation/view/general_order_view.dart';
import 'package:makanges_app/features/home/presentation/view/home_view.dart';
import 'package:makanges_app/features/order_in_details/presentation/view/order_in_details_view.dart';
import 'package:makanges_app/features/splash/presentation/view/splash_view.dart';

abstract class AppRouters {
  static const String splashViewRoute = '/'; //mean the first screen
  static const String homeViewRoute = '/homeView';
  static const String generalOrderInfoViewRoute = '/generalOrderInfoViewRoute';
  static const String orderInDetailsViewRoute = '/orderInDetailsViewRoute';
  static const String myCartViewRoute = '/myCartViewRoute';
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
      ),
      GoRoute(
        path: orderInDetailsViewRoute,
        builder: (context, state) => const OrderInDetailsView(),
      ),
      GoRoute(
        path: myCartViewRoute,
        builder: (context, state) => const MyCartView(),
      ),
    ],
  );
}

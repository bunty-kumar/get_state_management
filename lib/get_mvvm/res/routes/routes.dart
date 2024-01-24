import 'package:get/get.dart';
import 'package:get_state_management/get_mvvm/view/dashboard_screen.dart';
import '../../view/auth/login_page.dart';
import '../../view/splash_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: RouteName.loginView,
          page: () => const LoginPage(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: RouteName.homeView,
          page: () => const DashboardScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.fadeIn,
        ),
      ];
}

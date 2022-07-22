import 'package:get/get.dart';

import '../../presentation/home/home_binding.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/splash/splash_page.dart';
import 'route_constant.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: RouteConstant.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteConstant.home,
      binding: HomeBinding(),
      page: () => const HomePage(),
    )
  ];
}

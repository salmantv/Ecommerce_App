import 'package:get/get.dart';

import 'package:showman/app/modules/bottomNavigationBar/bindings/bottom_navigation_bar_binding.dart';
import 'package:showman/app/modules/bottomNavigationBar/views/bottom_navigation_bar_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loging_page/bindings/loging_page_binding.dart';
import '../modules/loging_page/views/loging_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGING_PAGE,
      page: () => LogingPageView(),
      binding: LogingPageBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_BAR,
      page: () => BottomNavigationBarView(),
      binding: BottomNavigationBarBinding(),
    ),
  ];
}

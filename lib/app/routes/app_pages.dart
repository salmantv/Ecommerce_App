import 'package:get/get.dart';

import 'package:showman/app/modules/Order_confirmation/bindings/order_confirmation_binding.dart';
import 'package:showman/app/modules/Order_confirmation/views/order_confirmation_view.dart';
import 'package:showman/app/modules/bottomNavigationBar/bindings/bottom_navigation_bar_binding.dart';
import 'package:showman/app/modules/bottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:showman/app/modules/cart_page/bindings/cart_page_binding.dart';
import 'package:showman/app/modules/cart_page/views/cart_page_view.dart';
import 'package:showman/app/modules/drawer_page/bindings/drawer_page_binding.dart';
import 'package:showman/app/modules/drawer_page/views/drawer_page_view.dart';
import 'package:showman/app/modules/prodect_viewpage/bindings/prodect_viewpage_binding.dart';
import 'package:showman/app/modules/prodect_viewpage/views/prodect_viewpage_view.dart';
import 'package:showman/app/modules/profile_page/bindings/profile_page_binding.dart';
import 'package:showman/app/modules/profile_page/views/profile_page_view.dart';
import 'package:showman/app/modules/wishlist_page/bindings/wishlist_page_binding.dart';
import 'package:showman/app/modules/wishlist_page/views/wishlist_page_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loging_page/bindings/loging_page_binding.dart';
import '../modules/loging_page/views/loging_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVIGATION_BAR;

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
    GetPage(
      name: _Paths.WISHLIST_PAGE,
      page: () => WishlistPageView(),
      binding: WishlistPageBinding(),
    ),
    GetPage(
      name: _Paths.PRODECT_VIEWPAGE,
      page: () => ProdectViewpageView(),
      binding: ProdectViewpageBinding(),
    ),
    GetPage(
      name: _Paths.CART_PAGE,
      page: () => CartPageView(),
      binding: CartPageBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER_PAGE,
      page: () => DrawerPageView(),
      binding: DrawerPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_CONFIRMATION,
      page: () => OrderConfirmationView(),
      binding: OrderConfirmationBinding(),
    ),
  ];
}

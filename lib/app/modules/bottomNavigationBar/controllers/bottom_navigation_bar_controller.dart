import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/home/views/home_view.dart';

import '../../wishlist_page/views/wishlist_page_view.dart';

class BottomNavigationBarController extends GetxController {
  RxInt pageindex = 0.obs;

  var pages = <Widget>[
    HomeView(),
    WishlistPageView(),
    Text("Profile"),
    Text("Cart"),
  ];
}

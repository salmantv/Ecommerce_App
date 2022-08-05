import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/home/views/home_view.dart';

class BottomNavigationBarController extends GetxController {
  RxInt pageindex = 0.obs;

  var pages = <Widget>[
    HomeView(),
    Text("Love"),
    Text("Profile"),
    Text("Cart"),
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/home/views/widgets/carousel_slider.dart';
import 'package:showman/app/modules/home/views/widgets/circel_catgory.dart';
import 'package:showman/app/modules/home/views/widgets/my_flutter_app_icons.dart';
import 'package:showman/app/modules/home/views/widgets/search_button.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      drawerScrimColor: Colors.black45,
      appBar: AppBar(
        toolbarHeight: 60.h,
        centerTitle: true,
        title: Icon(
          MyFlutterApp.logo,
          size: 28.h,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white24,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            right: 15.h,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Flexible(child: Serchbutoon()),
                Flexible(
                  flex: 2,
                  child: Carousel(carouselimage: ""),
                ),
                Container(
                  height: 100.h,
                  width: 400.w,
                  color: Colors.red,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Circule(),
                        SizedBox(
                          width: 20,
                        ),
                        Circule(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

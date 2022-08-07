import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/home/views/widgets/carousel_slider.dart';
import 'package:showman/app/modules/home/views/widgets/circel_catgory.dart';
import 'package:showman/app/modules/home/views/widgets/gendar_widget.dart';
import 'package:showman/app/modules/home/views/widgets/home_prodect_card.dart';
import 'package:showman/app/modules/home/views/widgets/my_flutter_app_icons.dart';
import 'package:showman/app/modules/home/views/widgets/search_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Serchbutoon(),
                    Carousel(carouselimage: ""),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Circule(
                                image:
                                    "https://beyoung.in/blog/wp-content/uploads/2019/04/CROP-T2-compressed-683x1024.jpg"),
                            Circule(
                                image:
                                    "https://i.pinimg.com/236x/98/c7/98/98c798d1959e6aff3c3e4cdd638f1343.jpg"),
                            Circule(
                                image:
                                    "https://img.freepik.com/free-photo/full-length-portrait-cute-little-kid-girl-stylish-jeans-clothes-smiling-standing-white-kids-fashion-concept_155003-20300.jpg?w=2000"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GenderWidget(),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "NEW ARRIVEL",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GridView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 180.h,
                          childAspectRatio: 1 / 1.9,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 0),
                      itemBuilder: (context, index) {
                        return HomeCard(
                          image:
                              "https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWVucyUyMGZhc2hpb258ZW58MHx8MHx8&w=1000&q=80",
                        );
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Explore More",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

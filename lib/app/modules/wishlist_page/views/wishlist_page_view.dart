import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/wishlist_page_controller.dart';

class WishlistPageView extends GetView<WishlistPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Favorite',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 190.w,
                height: 320.h,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Container(
                        width: 190.w,
                        height: 230.h,
                        color: Colors.amber,
                      ),
                      Flexible(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Container(
                          width: 190.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Leatherkraft",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$560.00 ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_rounded),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}

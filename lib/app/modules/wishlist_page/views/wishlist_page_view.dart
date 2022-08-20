import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/wishlist_page/views/widgets/favorite.dart';

import '../controllers/wishlist_page_controller.dart';

class WishlistPageView extends GetView<WishlistPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20.h,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wishlist items",
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 180.w,
                        childAspectRatio: 1 / 1.8,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return FavoriteCard();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

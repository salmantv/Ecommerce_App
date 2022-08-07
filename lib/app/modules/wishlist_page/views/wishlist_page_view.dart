import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/wishlist_page/views/widgets/favorite.dart';

import '../../home/views/widgets/home_prodect_card.dart';
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
                physics: BouncingScrollPhysics(),
                child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180.h,
                      childAspectRatio: 1 / 1.6.r,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return FavoriteCard();
                  },
                ))));
  }
}

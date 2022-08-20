import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/cart_page/views/widgtes/bottomPayBar.dart';
import 'package:showman/app/modules/cart_page/views/widgtes/cart_card.dart';
import 'package:showman/app/modules/wishlist_page/views/wishlist_page_view.dart';
import '../controllers/cart_page_controller.dart';

class CartPageView extends GetView<CartPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Buttomwidgetforcart(),
      appBar: AppBar(
        toolbarHeight: 60.h,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart (4 Products )",
          style: TextStyle(color: Colors.black, fontSize: 15.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(WishlistPageView());
            },
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Cartcard();
        },
      ),
    );
  }
}

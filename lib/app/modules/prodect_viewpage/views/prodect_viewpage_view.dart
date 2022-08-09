import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/appbar.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/buttomwidget.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/deliverywidget.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/prodectimage.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/sizewidget.dart';
import '../../cart_page/views/widgtes/sizeselect_widget.dart';
import '../controllers/prodect_viewpage_controller.dart';

class ProdectViewpageView extends GetView<ProdectViewpageController> {
  final prodectcontroller = Get.put(ProdectViewpageController());

  @override
  Widget build(BuildContext context) {
    Get.put(ProdectViewpageController());
    return Scaffold(
        bottomNavigationBar: Buttomwidget(),
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 60.h,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_sharp, color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: Appbaricons),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ProdectImage(),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 75.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "MOHAN",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text("Recycle Boucle Knit Cardigan Pink"),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 19.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Row(
                    children: [
                      Container(
                        child: Obx(() {
                          return Text(
                            "Size (${prodectcontroller.prodectsize.value})",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              letterSpacing: 2,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Sizeselectbutton(onePress: () {}, size: "j"),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 28.r, bottom: 15.h),
                        child: Row(
                          children: [
                            Text(
                              "MATERIALS",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 338.58,
                        height: 84.69,
                        child: Text(
                          "We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products. ",
                          style: TextStyle(
                            color: Color(0xff555555),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 23.h, bottom: 10.h),
                          child: Row(
                            children: [
                              Text(
                                "Delivery Derails",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Deliverywidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

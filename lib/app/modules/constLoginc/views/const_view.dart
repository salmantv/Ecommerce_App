// Flutter toast

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/constLoginc/controllers/const_controller.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/sizewidget.dart';

void fluttertoast(String massage) async {
  Fluttertoast.showToast(
      msg: massage,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 14.0);
}

// flutter buttomsheet

void buttomsheet() async {
  final controller = Get.put(ConstController());
  Get.bottomSheet(
    Container(
      height: 280.h,
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: Row(
              children: [
                Text(
                  "Select Size",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Sizeselectwidget(onePress: () {}, size: ""),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.h,
                height: 20.h,
              ),
              Text(
                "Select Quantity",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              IconButton(
                onPressed: () => controller.quantityremoving(),
                icon: Icon(Icons.remove),
              ),
              Container(
                width: 40.w,
                height: 40.h,
                child: Card(
                  elevation: 12,
                  color: Color.fromARGB(255, 240, 240, 240),
                  child: Center(
                    child: Obx(() {
                      return Text(
                        controller.quantity.value.toString(),
                        style: TextStyle(color: Colors.black),
                      );
                    }),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => controller.quantityuping(),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/prodect_viewpage/controllers/prodect_viewpage_controller.dart';

class Sizeselectbutton extends StatelessWidget {
  Sizeselectbutton({Key? key, required this.onePress, required this.size})
      : super(key: key);
  final prodectcontroller = Get.put(ProdectViewpageController());

  final Function()? onePress;
  final String size;
  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
        elevation: 8,
        radius: 80.r,
        height: 40.h,
        selectedBorderColor: Colors.black,
        unSelectedBorderColor: Colors.white,
        width: 40.h,
        enableShape: true,
        unSelectedColor: Colors.white,
        padding: 16.h,
        margin: EdgeInsets.all(16.h),
        buttonLables: [
          'S',
          'X',
          'E',
          'L',
        ],
        buttonValues: [
          "S",
          "X",
          "E",
          "L",
        ],
        buttonTextStyle: ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Colors.black,
            textStyle: TextStyle(fontSize: 13.sp)),
        radioButtonValue: (value) =>
            prodectcontroller.selectingprodectsize(value.toString()),
        selectedColor: Colors.black);
  }
}

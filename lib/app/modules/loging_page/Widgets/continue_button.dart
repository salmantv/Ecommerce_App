import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/otp_verify_screen/views/otp_verify_screen_view.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(OtpVerifyScreenView()),
      child: Container(
        width: 240.w,
        height: 43.5.h,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(8.r)),
        child: Center(
          child: Text(
            "Continue",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:showman/app/modules/bottomNavigationBar/controllers/bottom_navigation_bar_controller.dart';
import 'package:showman/app/modules/bottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:showman/app/modules/home/views/home_view.dart';

import '../controllers/otp_verify_screen_controller.dart';

class OtpVerifyScreenView extends GetView<OtpVerifyScreenController> {
  final bottomcontroller = Get.put(BottomNavigationBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.close,
              size: 25.h,
              color: Colors.black87,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.h,
                  ),
                  Text(
                    "Verfiy Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 27.5.h,
                  ),
                  Text(
                    "OTP sent to your mobile number",
                    style: TextStyle(
                      fontSize: 13.r,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 27.5.h,
                  ),
                  Text(
                    "OTP sented +91 8943176142",
                    style: TextStyle(
                        fontSize: 15.r,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 27.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Pinput(
                        validator: (s) {
                          if (s == "2222") {
                            Get.to(BottomNavigationBarView());
                          } else {
                            return "Wrong OTP entered";
                          }
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) => print(pin),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resent OTP ?",
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Trouble not getting OTP?",
                      style: TextStyle(fontSize: 12.5.sp),
                    ),
                  ),
                  Text(
                    maxLines: 2,
                    "It will go automatically next page",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_verify_screen_controller.dart';

class OtpVerifyScreenView extends GetView<OtpVerifyScreenController> {
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  "OTP sented this number +91 8943176142",
                  style: TextStyle(
                      fontSize: 15.r,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 27.5.h,
                ),
                Row(
                  children: [
                    Pinput(
                      validator: (s) {
                        return s == '2222' ? null : 'Incorect OTP enterd';
                      },
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ));
  }
}

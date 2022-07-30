import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/loging_page/Widgets/Mobile_Textfiled.dart';

import '../controllers/loging_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogingPageView extends GetView<LogingPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close_sharp,
                          size: 25.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/BTT 1.png",
                        width: 50.w,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login Or Signup",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  MobileNumberTextfild(),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Use E-mail ID",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Or contine with google account",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 40.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"))),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

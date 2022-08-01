import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/loging_page/Widgets/Mobile_Textfiled.dart';
import 'package:showman/app/modules/loging_page/Widgets/continue_button.dart';
import 'package:showman/app/modules/loging_page/Widgets/icon_button.dart';

import '../controllers/loging_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LogingPageView extends GetView<LogingPageController> {
  LogingPageController logingPageController = Get.put(LogingPageController());
  TextEditingController mobileText = TextEditingController();
  TextEditingController emailText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                    MobileNumberTextfild(
                        textController: logingPageController.isemail.isFalse
                            ? mobileText
                            : emailText,
                        comingemailid: logingPageController.isemail.value),
                    SizedBox(
                      height: 33.5.h,
                    ),
                    ContinueButton(),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () {
                          if (logingPageController.isemail.value == true) {
                            logingPageController.isemail.value = false;
                          } else {
                            logingPageController.isemail.value = true;
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Iconbuttonwidget(
                                assete:
                                    logingPageController.isemail.value == false
                                        ? "assets/images/Gmail-logo.png"
                                        : "assets/images/Phone logo.png",
                                flex: 0),
                            Text(
                              logingPageController.isemail.value == false
                                  ? "Use Email ID"
                                  : "Use Mobile Number",
                              style: TextStyle(
                                  fontSize: 13.h, fontWeight: FontWeight.w500),
                            )
                          ],
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
                    Iconbuttonwidget(
                      assete: "assets/images/Google Logo.png",
                      flex: 2,
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                )),
          ),
        ),
      );
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:showman/app/modules/Order_confirmation/views/widgets/Devliverycard.dart';
import 'package:showman/app/modules/Order_confirmation/views/widgets/address.dart';
import 'package:showman/app/modules/Order_confirmation/views/widgets/down_buttons.dart';

import '../controllers/order_confirmation_controller.dart';

class OrderConfirmationView extends GetView<OrderConfirmationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        elevation: 0.6,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Order Confirmation',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240.h,
              color: Color.fromARGB(255, 243, 234, 234),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.w,
                    height: 170.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.6,
                            blurRadius: 8,
                          ),
                        ]),
                    child: CardAddress(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Deliverycard(
                buttonName: "Delivery Prodect",
                ledingStringname: "25th Augest"),
            Deliverycard(
                buttonName: "Amount Payable", ledingStringname: "\$562.00"),
            SizedBox(
              height: 100.h,
            ),
            DeliveryButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/Order_confirmation/controllers/order_confirmation_controller.dart';

class DeliveryButton extends StatelessWidget {
  DeliveryButton({Key? key}) : super(key: key);

  final controller = Get.put(OrderConfirmationController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 140,
            child: Card(
              color: Colors.blue,
              elevation: 6,
              child: Center(
                  child: Text(
                "Cash on Delivery",
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              )),
            ),
          ),
        ),
        InkWell(
          onTap: () => controller.calltheapi(),
          child: Container(
            height: 60,
            width: 140,
            child: Card(
              color: Colors.black,
              elevation: 6,
              child: Center(
                  child: Text(
                "Online Payment",
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              )),
            ),
          ),
        ),
      ],
    );
  }
}

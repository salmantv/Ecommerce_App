import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:showman/app/modules/constLoginc/views/const_view.dart';

import '../../../constLoginc/controllers/const_controller.dart';

class Sizewidget extends StatelessWidget {
  Sizewidget({Key? key, required this.value, required this.sizeorQty})
      : super(key: key);
  final String value;
  final String sizeorQty;
  final controller = Get.put(ConstController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttomsheet();
      },
      child: Container(
        width: 45.w,
        height: 25.h,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 206, 206, 206),
            borderRadius: BorderRadius.circular(5.r)),
        child: Center(
          child: Obx(() {
            return Text(
              "$sizeorQty ${controller.quantity.value.toString()}",
              maxLines: 1,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 10.h,
                  color: Colors.black),
            );
          }),
        ),
      ),
    );
  }
}

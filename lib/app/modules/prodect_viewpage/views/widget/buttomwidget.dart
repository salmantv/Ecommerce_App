import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constLoginc/views/const_view.dart';
import '../../controllers/prodect_viewpage_controller.dart';

class Buttomwidget extends StatelessWidget {
  Buttomwidget({Key? key}) : super(key: key);
  final prodectcontroller = Get.put(ProdectViewpageController());

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      color: Colors.white,
      child: SizedBox(
          height: 60.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => fluttertoast("Add to Basket"),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => fluttertoast("Add to Basket"),
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    Text("ADD TO BASKET",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.18,
                        )),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  prodectcontroller.favoritcolorchanaging();
                  fluttertoast("Add to Favorite");
                },
                child: Obx(() {
                  return Container(
                    height: 34.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromARGB(255, 234, 231, 231)),
                    child: prodectcontroller.clicked.value == false
                        ? Icon(
                            Icons.favorite_border_outlined,
                            size: 16.sp,
                          )
                        : Icon(
                            Icons.favorite_outlined,
                            color: Colors.red,
                            size: 16.sp,
                          ),
                  );
                }),
              ),
            ],
          )),
    );
  }
}

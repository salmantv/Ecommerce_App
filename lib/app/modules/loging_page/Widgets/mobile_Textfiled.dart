import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumberTextfild extends StatelessWidget {
  bool comingemailid;
  MobileNumberTextfild(
      {required this.comingemailid, required this.textController});
  TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
          hintText:
              comingemailid == false ? "Enter Mobile Number" : "Enter Email ID",
          hintStyle: TextStyle(fontSize: 15.sp),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}

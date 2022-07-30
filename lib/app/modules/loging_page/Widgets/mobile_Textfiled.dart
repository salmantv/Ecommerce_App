import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumberTextfild extends StatelessWidget {
  const MobileNumberTextfild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Mobile Number",
            hintStyle: TextStyle(fontSize: 15.sp),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

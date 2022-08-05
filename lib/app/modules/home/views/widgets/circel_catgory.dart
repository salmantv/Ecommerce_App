import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Circule extends StatelessWidget {
  const Circule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 70.w,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(40)),
    );
  }
}

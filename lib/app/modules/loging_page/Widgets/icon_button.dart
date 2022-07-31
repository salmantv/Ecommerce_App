import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Iconbuttonwidget extends StatelessWidget {
  Iconbuttonwidget({Key? key, required this.assete, required this.flex})
      : super(key: key);

  String assete;
  int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        width: 40.w,
        height: 30.h,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(assete))),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/colors.dart';
import 'package:showman/app/modules/prodect_viewpage/views/widget/sizewidget.dart';

class ColorSizePart extends StatelessWidget {
  ColorSizePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Color"),
          ColorWidget(
            color: Colors.red,
          ),
          ColorWidget(
            color: Colors.blue,
          ),
          ColorWidget(
            color: Colors.grey,
          ),
          Text("Size"),
        ],
      ),
    );
  }
}

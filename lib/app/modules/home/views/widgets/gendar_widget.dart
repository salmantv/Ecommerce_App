import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Man",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Women",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Kids",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

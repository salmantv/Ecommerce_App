import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
  HomeCard({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 200.16.h,
      child: Column(
        children: [
          Card(
            elevation: 4,
            color: Colors.grey,
            child: Container(
                width: 165.w,
                height: 200.h,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 4.h),
          Container(
            width: 151.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 148.89.w,
                  child: Text(
                    "21WN reversible angora cardigan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                Text(
                  "\$120",
                  style: TextStyle(
                    color: Color(0xffdd8560),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

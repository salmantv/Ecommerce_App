import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardAddress extends StatelessWidget {
  const CardAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 55.h),
                child: Text(
                  "Home Delivery",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Change Address"),
              ),
            ],
          ),
          Text("50 , KOZHICAN, THENNALA"),
          Text("MALAPPURAM,"),
          Text("KERALA - 676508"),
          Text("8943176142"),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Deliverywidget extends StatelessWidget {
  const Deliverywidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.delivery_dining_sharp,
                size: 25.h,
              ),
              title: Text("Get it by Fri 12 Aug"),
            ),
            ListTile(
              leading: Icon(
                Icons.payment_rounded,
                size: 25.h,
              ),
              title: Text("Pay on delivery available"),
            ),
            ListTile(
              leading: Icon(
                Icons.keyboard_return_rounded,
                size: 25.h,
              ),
              title: Text("Easy 10 days return and exchange"),
            ),
          ],
        ),
      ),
    );
  }
}

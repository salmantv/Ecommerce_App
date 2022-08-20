import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListButtons extends StatelessWidget {
  ListButtons({Key? key, required this.buttonName, required this.iconData})
      : super(key: key);
  final String buttonName;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Card(
            color: Color.fromARGB(223, 255, 255, 255),
            elevation: 2,
            child: ListTile(
              title: Text(
                buttonName,
                style: TextStyle(fontSize: 14.h, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                iconData,
                color: Color.fromARGB(221, 50, 50, 50),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

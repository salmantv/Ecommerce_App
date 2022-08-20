import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Deliverycard extends StatelessWidget {
  Deliverycard(
      {Key? key, required this.buttonName, required this.ledingStringname})
      : super(key: key);
  final String buttonName;
  final String ledingStringname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.h,
      color: Colors.white,
      child: Card(
        elevation: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              buttonName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ledingStringname,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/cart_page/views/widgtes/sizeshowbutton.dart';

import '../../../constLoginc/controllers/const_controller.dart';

class Prodectdeatils extends StatefulWidget {
  Prodectdeatils({Key? key}) : super(key: key);

  @override
  State<Prodectdeatils> createState() => _ProdectdeatilsState();
}

class _ProdectdeatilsState extends State<Prodectdeatils> {
  String value = '60';
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Container(
        width: 300.w,
        height: 120.h,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LEVIS",
                style: TextStyle(fontSize: 14.h, fontWeight: FontWeight.bold),
              ),
              Text(
                "Brand Print Crew- Newck T-shirt",
                style: TextStyle(fontSize: 10.h),
              ),
              Row(
                children: [
                  Sizewidget(value: "M", sizeorQty: "Size :"),
                  SizedBox(
                    width: 12.w,
                  ),
                  Sizewidget(
                    value: "1",
                    sizeorQty: "Qty : ",
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$650",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 13.h,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        value = "70";
                      });
                      value = "80";
                    },
                    child: Text(
                      "${value}% Off",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13.h,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
              Text(
                "You save \$500.00",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.h,
                    color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}

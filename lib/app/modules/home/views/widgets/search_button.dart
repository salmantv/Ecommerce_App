import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Serchbutoon extends StatelessWidget {
  const Serchbutoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Flexible(
            child: Container(
                height: 50.h,
                color: Color(0xfff8f8f8),
                child: Card(
                  elevation: 12,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        InkWell(onTap: () {}, child: Icon(Icons.search)),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "Search by Product Brand & More",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

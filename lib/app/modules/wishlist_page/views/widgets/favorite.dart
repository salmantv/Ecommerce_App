import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 220.w,
          height: 280.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: Container(
                        width: 220.w,
                        height: 190.h,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1617922001439-4a2e6562f328?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 10.h),
                      child: Container(
                        width: 190.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Leatherkraft",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.delete,
                                  size: 17,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              "\$560.00 ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

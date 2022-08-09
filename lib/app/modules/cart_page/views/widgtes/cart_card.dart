import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showman/app/modules/cart_page/views/widgtes/prodectdetails.dart';

class Cartcard extends StatelessWidget {
  const Cartcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 12.h, left: 20.h, right: 20.h, bottom: 20.h),
      child: Card(
        elevation: 8,
        child: Container(
          color: Colors.white.withOpacity(0.9),
          width: MediaQuery.of(context).size.width,
          height: 190.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(12.0.r),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.r),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          width: 150.w,
                          height: 120.h,
                          child: Image.network(
                            "https://cdn.shopify.com/s/files/1/0293/9277/products/02-17-22SuitingEditorial_CE_08-51-04_Look3_0423_KL_DM_e462bfb4-0108-4f09-9fd3-b7420666c11b_360x.jpg?v=1657296954",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Prodectdeatils(),
                ],
              ),
              Center(child: TextButton(onPressed: () {}, child: Text("Remove")))
            ],
          ),
        ),
      ),
    );
  }
}

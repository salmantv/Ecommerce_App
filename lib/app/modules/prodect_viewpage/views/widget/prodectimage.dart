import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/views/widgets/carousel_slider.dart';

class ProdectImage extends StatelessWidget {
  const ProdectImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 25.h, right: 25.h, top: 15.r, bottom: 22.h),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 380.h,
            child: Carousel(
              where: true,
              carouselimage:
                  "https://images.unsplash.com/photo-1617922001439-4a2e6562f328?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key, required this.carouselimage, required this.where})
      : super(key: key);
  final String carouselimage;
  final bool where;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
      ),
      child: Container(
          child: CarouselSlider(
              items: [
            Container(
              child: where == true
                  ? Hero(
                      tag: "image",
                      child: Image.network(
                        carouselimage,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Image.asset(carouselimage),
            ),
          ],
              options: CarouselOptions(
                height: where == false ? 240.h : 420.h,
                aspectRatio: 16 / 8,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInCubic,
                scrollDirection: Axis.horizontal,
              ))),
    );
  }
}

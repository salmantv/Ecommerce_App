import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key, required this.carouselimage}) : super(key: key);
  final String carouselimage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Container(
          child: CarouselSlider(
              items: [
            Container(
              child: Image.asset(
                "assets/images/Post2.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ],
              options: CarouselOptions(
                height: 200.h,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ))),
    );
  }
}

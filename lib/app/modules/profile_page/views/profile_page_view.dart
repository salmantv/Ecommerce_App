import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/profile_page/views/widget/list_Tiles.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "My Account",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 1,
                fontWeight: FontWeight.normal),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          width: 200.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Salman",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Salman@gamil.com",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                "894317612",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Divider(
                    color: Colors.black54,
                    thickness: 0.5,
                  ),
                ),
              ),
              ListButtons(
                buttonName: "Orders",
                iconData: Icons.shopping_bag_rounded,
              ),
              ListButtons(
                buttonName: "Favorite",
                iconData: Icons.favorite,
              ),
              ListButtons(buttonName: "Cart", iconData: Icons.shopping_cart),
              SizedBox(
                height: 100.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drawer_page_controller.dart';

class DrawerPageView extends GetView<DrawerPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DrawerPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

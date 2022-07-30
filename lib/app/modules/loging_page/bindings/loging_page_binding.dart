import 'package:get/get.dart';

import '../controllers/loging_page_controller.dart';

class LogingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogingPageController>(
      () => LogingPageController(),
    );
  }
}

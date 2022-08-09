import 'package:get/get.dart';

import '../controllers/const_controller.dart';

class ConstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConstController>(
      () => ConstController(),
    );
  }
}

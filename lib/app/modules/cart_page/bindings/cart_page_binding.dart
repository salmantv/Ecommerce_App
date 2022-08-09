import 'package:get/get.dart';

import '../controllers/cart_page_controller.dart';

class CartPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartPageController>(
      () => CartPageController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/order_confirmation_controller.dart';

class OrderConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderConfirmationController>(
      () => OrderConfirmationController(),
    );
  }
}

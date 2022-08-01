import 'package:get/get.dart';

import '../controllers/otp_verify_screen_controller.dart';

class OtpVerifyScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpVerifyScreenController>(
      () => OtpVerifyScreenController(),
    );
  }
}

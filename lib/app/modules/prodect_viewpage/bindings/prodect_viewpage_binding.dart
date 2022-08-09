import 'package:get/get.dart';

import '../controllers/prodect_viewpage_controller.dart';

class ProdectViewpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProdectViewpageController>(
      () => ProdectViewpageController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/wishlist_page_controller.dart';

class WishlistPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistPageController>(
      () => WishlistPageController(),
    );
  }
}

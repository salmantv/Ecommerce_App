import 'package:get/get.dart';

class ProdectViewpageController extends GetxController {
  Rx<String> prodectsize = Rx("Select size");
  Rx<bool> clicked = Rx(false);

  selectingprodectsize(String value) async {
    prodectsize.value = value;
  }

  favoritcolorchanaging() async {
    if (clicked == false) {
      clicked.value = true;
    } else {
      clicked.value = false;
    }
  }
}

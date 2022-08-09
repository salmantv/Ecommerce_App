import 'package:get/get.dart';

class ConstController extends GetxController {
  Rx<int> quantity = Rx(1);

  quantityuping() async {
    quantity.value += 1;
  }

  quantityremoving() async {
    if (quantity.value <= 1) {
      return;
    }
    quantity.value--;
  }
}

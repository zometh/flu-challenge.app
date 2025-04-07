import 'package:get/get.dart';

class ProductViewController extends GetxController {
  RxInt currentImage = 0.obs;

  upadeImageIndex(int newIndex) {
    currentImage.value = newIndex;
    update();
  }
}

import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class ProductViewController extends GetxController {
  RxInt currentImage = 0.obs;
  RxInt currentProductChoice = 0.obs;
  RxBool isFavorite = false.obs;
  Rx<CarouselSliderController> sliderController =
      CarouselSliderController().obs;
  upadeImageIndex(int newIndex) {
    currentImage.value = newIndex;
    update();
  }

  upadeChoiceIndex(int newIndex) {
    currentProductChoice.value = newIndex;
    update();
  }

  updateFavorite() {
    isFavorite.value = !isFavorite.value;
    update();
  }
}

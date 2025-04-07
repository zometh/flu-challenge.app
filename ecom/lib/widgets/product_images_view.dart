import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/config/color.dart';
import 'package:ecom/controllers/product_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProductImagesView extends StatelessWidget {
  final List<String> images;
  const ProductImagesView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductViewController>(
      init: ProductViewController(),
      builder: (controller) {
        return Column(
          children: [
            CarouselSlider(
              carouselController: controller.sliderController.value,
              options: CarouselOptions(
                height: 311.0.h,
                onPageChanged: (index, reason) => controller.upadeImageIndex(index),
              ),
            
              items:
                  images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          decoration: BoxDecoration(),
                          child: Image.asset(i, width: 250.w, height: 250.w),
                        );
                      },
                    );
                  }).toList(),
            ),
_imageIndicator()
          ],
        );
      },
    );
  }

  Row _imageIndicator() {
    ProductViewController controller = Get.put(ProductViewController());
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 20.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => InkWell(
          onTap: () {
            controller.sliderController.value.animateToPage(index);
            controller.upadeImageIndex(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == controller.currentImage.value ? kDarkColor : Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}

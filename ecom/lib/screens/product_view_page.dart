import 'package:ecom/config/color.dart';
import 'package:ecom/config/images_constants.dart';
import 'package:ecom/controllers/product_view_controller.dart';
import 'package:ecom/widgets/card_reduction.dart';
import 'package:ecom/widgets/custom_button.dart';
import 'package:ecom/widgets/custom_text.dart';
import 'package:ecom/widgets/product_color_choice.dart';
import 'package:ecom/widgets/product_images_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key});

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  List<String> images = [kProductImage1, kProductImage2, kProductImage3];
  List<String> colors = ["Bleu", "Vert", "Rose"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(kArrowImage)),
            IconButton(
              onPressed: () {},
              icon: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: ktertiary,
                  shape: BoxShape.circle,
                ),

                child: Image.asset(kBagImage),
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImagesView(images: images),
              SizedBox(height: 23.h),
              CustomText(
                text: "Nouveau",
                color: ksecondary,
                fontSize: 18.sp,

                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 8.h),
              CustomText(
                text: "Apple Airpods Max",
                color: kDarkColor,
                fontSize: 28,

                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 4.h),
              Row(
                spacing: 4.w,
                children: [
                  Icon(Icons.star, color: kprimary),
                  SizedBox(width: 2.w),
                  CustomText(
                    text: "4.5",
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                  CustomText(
                    text: "(278 avis)",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  spacing: 18.w,
                  children: [
                    CustomText(
                      text: "32000 Fcfa",
                      color: kDarkColor,
                      fontSize: 22,

                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: "65000 Fcfa",
                      color: kgrey,
                      fontSize: 22,

                      fontWeight: FontWeight.w400,
                      isStrikethrough: true,
                    ),

                    CardReduction(reduction: 56),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              ProductColorChoice(colors: colors),
              SizedBox(height: 12.h),

              CustomText(
                text:
                    "Les AirPods Max réinventent le casque circum-auriculaire avec un transducteur conçu par Apple pour un son haute fidélité.",

                fontSize: 16,
                fontWeight: FontWeight.w300,
                overflow: TextOverflow.visible,
              ),
              SizedBox(height: 70.h),
              Row(
                spacing: 17.w,
                children: [
                  GetBuilder<ProductViewController>(
                    builder: (controller) {
                      bool isClicked = controller.isFavorite.value;
                      return IconButton(
                        onPressed: () => controller.updateFavorite(),
                        icon: Image.asset(
                          isClicked ? kHeartFillImage : kHeartImage,
                        ),
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.all(16)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            kgrey.withAlpha(50),
                          ),
                          minimumSize: WidgetStatePropertyAll(Size(60.w, 60.h)),
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: CustomButton(
                      text: "Ajouter au panier",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 29.h),
            ],
          ),
        ),
      ),
    );
  }
}

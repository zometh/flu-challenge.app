import 'package:ecom/config/color.dart';
import 'package:ecom/controllers/product_view_controller.dart';
import 'package:ecom/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductColorChoice extends StatelessWidget {
  final List<String> colors;
  const ProductColorChoice({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductViewController>(
      init: ProductViewController(),
      builder: (controller) {
        int? currentChoice = controller.currentProductChoice.value;
        return Wrap(
          spacing: 10.w,
          children:
              colors.map((c) {
                int index = colors.indexOf(c);
                return ChoiceChip(
                  color: WidgetStatePropertyAll(Colors.white),
                  showCheckmark: false,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  side:
                      currentChoice == index
                          ? BorderSide(color: kDarkColor, width: 1.5)
                          : null,
                  padding: EdgeInsets.all(8),
                  label: CustomText(
                    text: c,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),

                  selected: currentChoice == index,
                  onSelected: (bool selected) {
                    if (selected) {
                      controller.upadeChoiceIndex(index);
                    }
                  },
                );
              }).toList() 
            ,
        );
      },
    );
  }
}

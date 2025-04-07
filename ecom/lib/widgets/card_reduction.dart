import 'package:ecom/config/color.dart';
import 'package:ecom/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardReduction extends StatelessWidget {
  final int reduction;
  const CardReduction({super.key, required this.reduction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 28.h,
      decoration: BoxDecoration(
        color: Color(0xFFFFFBE2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CustomText(
        text: "-$reduction%",
        color: ksecondary,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        overflow: TextOverflow.visible,
      ),
    );
  }
}

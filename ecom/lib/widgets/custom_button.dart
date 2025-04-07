import 'package:ecom/config/color.dart';
import 'package:ecom/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double minHeight;
  final double minWidth;
  final Function onTap;
  const CustomButton({
    super.key,
    required this.text,
    this.minHeight = 60,
    this.minWidth = 323,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        backgroundColor: WidgetStatePropertyAll(kprimary),
        minimumSize: WidgetStatePropertyAll(Size(minWidth, minHeight)),
      ),
      child: CustomText(text: text, fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isStrikethrough;
  final TextOverflow? overflow;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.isStrikethrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lexend(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: fontWeight,
        decorationColor: color,
        decoration: isStrikethrough ? TextDecoration.lineThrough : null,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

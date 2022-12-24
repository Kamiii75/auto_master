
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/constant/colors.dart';
import '../core/constant/container_decoration.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Color? textColor;
  final double? fontSize;

  const DefaultButton({
    super.key,
    required this.text,
    required this.onTap,
    this.margin,
    this.color,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.h),
        child: Container(
          margin: margin ?? const EdgeInsets.only(top: 20),
          height: 6.h,
          width: 60.w,
          decoration: default_button_decoration,
          child: Center(
            child: Text(
              text,
               style:  GoogleFonts.outfit (
              fontSize:  20.sp,
              fontWeight:  FontWeight.w700,
              //height:  1.26*ffem/fem,
              color:  Color(0xffffffff),
            ),
            ),
          ),
        ),
      ),
    );
  }
}

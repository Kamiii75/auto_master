import 'package:auto_master/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';





TextStyle appBarStyle = GoogleFonts.openSans(
  fontSize: 22.sp,
  fontWeight: FontWeight.w400,
  color:AppColors.appbartexts,
);
TextStyle textFieldStyle = GoogleFonts.openSans(
  fontSize: 18.sp,
  fontWeight: FontWeight.w400,

);
TextStyle textFieldHintStyle = GoogleFonts.openSans(
  color: const Color(0xff797676),
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

TextStyle dialogboxText = GoogleFonts.openSans(
  fontSize: 28.sp,
  fontWeight: FontWeight.w500,
  color: AppColors.appbartexts,
);
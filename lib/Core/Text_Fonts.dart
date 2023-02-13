import 'package:flutter/material.dart';
import 'package:flutter_app/Core/AppColor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFonts{
 static TextStyle topText = GoogleFonts.poppins(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: AppColors.witheColor
  );

 static TextStyle commonwitheText = GoogleFonts.poppins(
     fontSize: 18.sp,
     fontWeight: FontWeight.w500,
     color: AppColors.witheColor
 );

 static TextStyle commonblackText = GoogleFonts.poppins(
     fontSize: 15.sp,
     fontWeight: FontWeight.w500,
     color: AppColors.blackColor
 );

 static TextStyle splashtop = GoogleFonts.poppins(
     fontSize: 50.sp,
     fontWeight: FontWeight.w500,
     color: AppColors.witheColor
 );
}

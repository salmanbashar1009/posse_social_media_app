import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_palette.dart';

class AppTextTheme{
  static TextTheme lightTextTheme = TextTheme(
    /// Headline Text Theme
    headlineLarge: GoogleFonts.nunito(
      fontSize: 24.sp,
      color: AppColors.primaryTextColor,
      fontWeight: FontWeight.w700
    ),

    headlineMedium: GoogleFonts.nunito(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor,
    ),

    headlineSmall: GoogleFonts.nunito(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
    ),

    /// Body Text Theme
    bodyLarge: GoogleFonts.nunito(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.bodyTextColor,
    ),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyTextColor,
    ),
    bodySmall: GoogleFonts.nunito(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyTextColor,
    ),

  );
}
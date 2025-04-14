import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gellirbabe_posse_app/core/theme/theme_extentions/color_palette.dart';
import 'package:gellirbabe_posse_app/core/theme/theme_extentions/text_theme.dart';
import 'package:gellirbabe_posse_app/core/theme/widgets_theme/widgets_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      error: Colors.white,
      onError: Colors.red,
      surface: AppColors.onPrimary,
      onSurface: AppColors.primaryTextColor,
    ),

    /// AppBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primaryTextColor,
      actionsIconTheme: IconThemeData(
        color: Color(0xFF141B34)
    )
    ),

    /// Bottom sheet theme
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.w),
          topRight: Radius.circular(30.w)
        )
      )
    ),

    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.secondary,
    textTheme: AppTextTheme.lightTextTheme,
    inputDecorationTheme: WidgetsTheme.lightInputDecorationTheme,

  );
}

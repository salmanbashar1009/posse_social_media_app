import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/theme_extentions/color_palette.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key, this.hintText, this.prefixIcon, this.suffixIcon, this.controller, this.onChanged, this.validator, this.keyboardType,
  });

 final String? hintText;
 final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
 final ValueChanged<String>? onChanged;
final  String? Function(String?)? validator;
 final TextInputType? keyboardType;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator ,
      onChanged: onChanged,
      keyboardType: keyboardType,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.primaryTextColor
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        hintText: hintText,
        prefixIconColor: Color(0xFF777980),
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(maxHeight: 40.h, maxWidth: 40.w),),
    );
  }
}

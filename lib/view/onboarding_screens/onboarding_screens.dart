import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gellirbabe_posse_app/constant/app_padding.dart';
import 'package:gellirbabe_posse_app/routing/route_name.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme_extentions/color_palette.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Simulate loading or initialization tasks
  //   Timer(const Duration(seconds: 2 ), () {
  //     _showBottomSheet(context);
  //   });
  // }
  //
  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         width: MediaQuery.of(context).size.width,
  //         height: MediaQuery.of(context).size.height / 2,
  //         decoration: BoxDecoration(
  //           color: AppColors.secondary,
  //           borderRadius: BorderRadius.only(
  //             topRight: Radius.circular(30.w),
  //             topLeft: Radius.circular(30.w),
  //           ),
  //         ),
  //         child: Padding(
  //           padding: AppPadding.screenHorizontalPadding,
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               SizedBox(height: 70.h),
  //               Text(
  //                 "Let's Get Started",
  //                 style: Theme.of(context).textTheme.headlineLarge,
  //               ),
  //               SizedBox(height: 8.h),
  //               Text(
  //                 "If you want to join the conversation, \nplease log in or sign up.",
  //                 style: Theme.of(context).textTheme.bodyMedium,
  //                 textAlign: TextAlign.center,
  //               ),
  //               SizedBox(height: 44.h),
  //               buildContainerButton(
  //                 context: context,
  //                 imagePath: "assets/icons/proceed-login.png",
  //                 title: "Proceed to Login",
  //                 color: AppColors.inactiveButtonColor,
  //               ),
  //               SizedBox(height: 12.h),
  //               buildContainerButton(
  //                 context: context,
  //                 imagePath: "assets/icons/user.png",
  //                 title: "New User? Sign Up",
  //                 color: AppColors.primary,
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background.png", fit: BoxFit.cover),
        Positioned(
          top: 100,
          left: MediaQuery.of(context).size.width / 2 - 70,
          child: Text(
            "POSSE",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontFamily: GoogleFonts.gabarito().fontFamily,
              color: AppColors.secondary,
              fontSize: 44.sp,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.w),
                topLeft: Radius.circular(30.w),
              ),
            ),
            child: Padding(
              padding: AppPadding.screenHorizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70.h),
                  Text(
                    "Let's Get Started",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "If you want to join the conversation, \nplease log in or sign up.",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 44.h),
                  buildContainerButton(
                    context: context,
                    imagePath: "assets/icons/proceed-login.png",
                    title: "Proceed to Login",
                    color: AppColors.inactiveButtonColor,
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.loginScreen);
                    }
                  ),
                  SizedBox(height: 12.h),
                  buildContainerButton(
                    context: context,
                    imagePath: "assets/icons/user.png",
                    title: "New User? Sign Up",
                    color: AppColors.primary,
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, RouteName.signUpScreen, (_) => false);
                    }
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContainerButton({
    required BuildContext context,
    required String imagePath,
    required String title,
    required Color color,
    required VoidCallback onTap,
    // required Color titleColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(99.r),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                shape: BoxShape.circle,
              ),
              child: ImageIcon(AssetImage(imagePath)),
            ),
            SizedBox(width: 16.w),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: color == AppColors.inactiveButtonColor ? AppColors.primaryTextColor : AppColors.onPrimary),
            ),
            Spacer(),
            Icon(Icons.arrow_forward, color:  color == AppColors.inactiveButtonColor ? AppColors.primaryTextColor : AppColors.onPrimary),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gellirbabe_posse_app/core/constant/app_padding.dart';
import 'package:gellirbabe_posse_app/core/routing/route_name.dart';
import 'package:gellirbabe_posse_app/core/theme/theme_extentions/color_palette.dart';
import 'package:gellirbabe_posse_app/core/utils/utils.dart';
import 'package:gellirbabe_posse_app/presentation/features/widgets/app_text_form_field.dart' show AppTextFormField;


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.appBarBackButton(context),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi! Welcome Back',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Log in to your account",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.bodyTextColorGreyScale,
                  ),
                ),
                SizedBox(height: 40.h),
                AppTextFormField(
                  hintText: "Your Email",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 4.w),
                    child: ImageIcon(AssetImage("assets/icons/email.png"),size: 18.r,),
                  ),
                ),
                SizedBox(height: 16.h),
                AppTextFormField(
                  hintText: "Enter your password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 4.w),
                    child: ImageIcon(AssetImage("assets/icons/lock.png"),size: 18.r,),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    size: 20.r,
                    color: Color(0xFF777980),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xFF2764B5),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "Remember me",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Color(0xFF2764B5)),
                    ),
                  ],
                ),
                SizedBox(height: 44.h),
                SizedBox(
                  height: 56.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      elevation: 0
                    ),
                    child: Text(
                      "Log in",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.onPrimary,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 44.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Divider(color: Color(0xFFE2E8F0),height: 1,)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: Text("Or",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),),
                    ),
                    Expanded(child: Divider(color: Color(0xFFE2E8F0),height: 1,)),
                  ],
                ),
                SizedBox(height: 44.h,),
                buildLoginButton(context: context,imagePath: "assets/icons/google.png",title: "Continue with Google"),
                SizedBox(height: 16.h,),
                buildLoginButton(context: context,imagePath: "assets/icons/apple.png",title: "Continue with Apple"),
                SizedBox(height: 32.h,),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style:Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xFF2764B5)
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            Navigator.pushNamedAndRemoveUntil(context, RouteName.signUpScreen, (_)=>false);
                            },
                        ),
                      ],
                    ),
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildLoginButton({required BuildContext context,required String imagePath, required String title}) {
    return Container(
              padding: EdgeInsets.symmetric(vertical: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Color(0xFFE2E8F0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imagePath,width: 24.w,height: 24.h,),
                  SizedBox(width: 8.w,),
                  Text(title,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.primaryTextColor
                  ),)
                ],
              ),

              );
  }
}

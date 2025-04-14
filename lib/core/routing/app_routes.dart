import 'package:flutter/cupertino.dart';
import 'package:gellirbabe_posse_app/core/routing/route_name.dart';
import 'package:gellirbabe_posse_app/presentation/features/auth_screens/login_screens/view/login_Screen.dart';
import 'package:gellirbabe_posse_app/presentation/features/auth_screens/signup_screens/view/signup_screen.dart';
import 'package:gellirbabe_posse_app/presentation/features/onboarding_screens/onboarding_screens.dart';


class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes(){
    return {
      RouteName.onboardingScreen : (context) => OnboardingScreen(),
      RouteName.loginScreen : (context) => LoginScreen(),
      RouteName.signUpScreen : (context) => SignUpScreen(),
    };
  }
}
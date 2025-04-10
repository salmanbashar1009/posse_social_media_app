import 'package:flutter/cupertino.dart';
import 'package:gellirbabe_posse_app/routing/route_name.dart';
import 'package:gellirbabe_posse_app/view/auth_screens/login_Screen.dart';
import 'package:gellirbabe_posse_app/view/auth_screens/signup_screen.dart';
import 'package:gellirbabe_posse_app/view/onboarding_screens/onboarding_screens.dart';



class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes(){
    return {
      RouteName.onboardingScreen : (context) => OnboardingScreen(),
      RouteName.loginScreen : (context) => LoginScreen(),
      RouteName.signUpScreen : (context) => SignUpScreen(),
    };
  }
}
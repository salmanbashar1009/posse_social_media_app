import 'package:flutter/cupertino.dart';
import 'package:gellirbabe_posse_app/routing/route_name.dart';
import 'package:gellirbabe_posse_app/view/auth_screens/login_Screen.dart';

import '../view/onboarding_screens/onboarding_screen.dart';


class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes(){
    return {
      RouteName.splashScreen : (context) => OnboardingScreen(),
      RouteName.loginScreen : (context) => LoginScreen(),
    };
  }
}
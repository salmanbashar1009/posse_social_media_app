import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gellirbabe_posse_app/routing/app_routes.dart';
import 'package:gellirbabe_posse_app/routing/route_name.dart';
import 'package:gellirbabe_posse_app/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double deviceWidth = 402.0;
  static const double deviceHeight = 874.0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(deviceWidth, deviceHeight),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context,child) {
      return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Posse',
          theme: AppTheme.lightTheme,

          initialRoute: RouteName.splashScreen,
          routes: AppRoutes.getRoutes(),

        );
      }
    );
  }
}

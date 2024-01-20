import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/app_router.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        theme: ThemeData(
            primaryColor: ColorManger.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routerConfig: Approute.router,
      ),
    );
  }
}

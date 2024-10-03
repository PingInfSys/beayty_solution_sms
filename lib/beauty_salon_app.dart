import 'package:beauty_salon/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeautySalonApp extends StatelessWidget {
  const BeautySalonApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Inter",
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}

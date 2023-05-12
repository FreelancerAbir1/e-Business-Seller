import 'package:ebusiness/auth%20screen/login%20screen/login_screen.dart';
import 'package:ebusiness/bindings/bindings.dart';
import 'package:ebusiness/const/string.dart';
import 'package:ebusiness/screen/bottom%20nav/bottom_nav_bar.dart';
import 'package:ebusiness/screen/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'const/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        initialBinding: InitialBindings(),
        themeMode: ThemeMode.light,
        theme: buildThemeData(),
        //   home: const SplashScreen(),
        initialRoute: SplashScreen.routeName,
        getPages: [
          GetPage(
              name: SplashScreen.routeName,
              page: () => SplashScreen(),
              binding: InitialBindings()),
          GetPage(
              name: LoginScreen.routeName,
              page: () => LoginScreen(),
              binding: InitialBindings()),
          GetPage(
              name: BottomNavBar.routeName,
              page: () => BottomNavBar(),
              binding: InitialBindings()),
        ],
      );
    });
  }
}
ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      // border: InputBorder.none,
      labelStyle: const TextStyle(color: Colors.black45),
      iconColor: Colors.grey,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: kTransparentColor,
      elevation: 0,
    ),
  );
}

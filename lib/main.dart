import 'package:ebusiness/auth%20screen/login%20screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'const/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const LoginScreen(),
    );
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
    scaffoldBackgroundColor: kBlackColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: kBlackColor,
    ),
  );
}

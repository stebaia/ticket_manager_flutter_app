import 'package:flutter/material.dart';

class ThemeHelper {
  static Color background = Color(0xffF3F5F9);
  static Color backgroundDark = Color(0xff1F1F1F);
  static Color primaryColor = Color.fromARGB(255, 0, 194, 103);

  static ThemeData myThemeData(bool isDarkTheme, BuildContext buildContext) {
    return ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
        primaryColor: primaryColor,
        textTheme: myTextTheme(isDarkTheme, buildContext),
        backgroundColor: isDarkTheme ? backgroundDark : background);
  }

  static TextTheme myTextTheme(bool isDarkTheme, BuildContext context) {
    return TextTheme(
      headline1: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
      headline2: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
      bodyText2: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
      subtitle1: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}

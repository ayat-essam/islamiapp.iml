import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffF8F8F8);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color black = Color(0xff242424);
  static const Color white = Color(0xffF8F8F8);
  static const Color gold = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: gold,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: gold,
      unselectedItemColor: white,
      selectedItemColor: black,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: gold,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: gold,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.grey),
      trackColor: MaterialStateProperty.all(Colors.grey),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkPrimary,
      unselectedItemColor: white,
      selectedItemColor: gold,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: gold,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: gold,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(white),
      trackColor: MaterialStateProperty.all(gold),
    ),
  );
}

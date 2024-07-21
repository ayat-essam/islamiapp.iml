import 'package:flutter/material.dart';

class AppTheme extends StatelessWidget {
 static const Color lightprimary = Color(0xffB7935F);
 static const Color darkprimary = Color(0xff141A2E);
 static const Color black = Color(0xff242424);
 static const Color white = Color(0xffFACC1D);
 static const Color gold = Color(0xffB7935F);

 static ThemeData lightTheme = ThemeData(
  primaryColor: lightprimary,
  scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
   type: BottomNavigationBarType.fixed,
   backgroundColor: gold,
   unselectedItemColor: gold,
   selectedItemColor: Colors.brown
  )
 );
  static ThemeData darkTheme = ThemeData(
     primaryColor: darkprimary,
     scaffoldBackgroundColor: Colors.transparent,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
         type: BottomNavigationBarType.fixed,
         backgroundColor: darkprimary,
         unselectedItemColor: white,
         selectedItemColor: gold
     )
 );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

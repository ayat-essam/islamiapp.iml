import 'package:flutter/material.dart';

class AppTheme extends StatelessWidget {
 static const Color lightprimary = Color(0xffB7935F);
 static const Color darkprimary = Color(0xff141A2E);
 static const Color black = Color(0xff242424);
 static const Color white = Color(0xffF8F8F8);
 static const Color gold = Color(0xffB7935F);

 static ThemeData lightTheme = ThemeData(
  primaryColor: lightprimary ,
  appBarTheme: AppBarTheme(
   backgroundColor: Colors.transparent,
   titleTextStyle: TextStyle(
    fontSize: 30,
    fontWeight:FontWeight.bold,
    color: Colors.black
   )
  ),
  scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
   type: BottomNavigationBarType.fixed,
   backgroundColor: gold,
   unselectedItemColor: white,
   selectedItemColor: black
  ),
     textTheme: TextTheme(
     headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w400
     ),
         titleLarge: TextStyle(
             color: Colors.black,
             fontSize: 24,
             fontWeight: FontWeight.w400
 ),
     ),
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

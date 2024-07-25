import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:islamiapp/homScreen.dart';
import 'package:islamiapp/sura_details_screen.dart';

void main() {
  runApp( IslamicApp());
}

class IslamicApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      routes: {
  HomeScreen.routeName: (_) => HomeScreen(),
        '/sura_details': (context) => suraDetailsScr(),

      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}



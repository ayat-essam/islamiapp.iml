import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:islamiapp/homScreen.dart';
import 'package:islamiapp/sura_details_screen.dart';
import 'package:islamiapp/tabs/hadith_detailes_scr.dart';
import 'package:islamiapp/tabs/setting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


 void main() {
  runApp(
      ChangeNotifierProvider(
      create: (context) => Setting(),
  child: IslamicApp(),
      ),
      );
}

class IslamicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Setting setting = Provider.of<Setting>(context);

    return MaterialApp(
debugShowCheckedModeBanner: false,
      routes: {
  HomeScreen.routeName: (_) => HomeScreen(),
        '/sura_details': (context) => suraDetailsScr(),
        '/hadith_detailes': (context) => hadithDetailes(),

      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Setting().themeMode,



    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(setting.Language),

    );
    }
    }







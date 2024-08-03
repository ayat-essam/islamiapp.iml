import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class PreferencesHelper{
  static const String  _keyLanguage ="language";
  static const String  _keyThemeMode ="themeMode";

  static Future <void> setLang(String langCode) async{

  SharedPreferences sharedpreferences =  await SharedPreferences.getInstance();
  await sharedpreferences.setString(_keyLanguage,langCode);
  }

  static Future <String?> getLanguage() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_keyLanguage);
  }

  static Future <void> setthemeMode(String setMode) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_keyThemeMode, setMode);
  }

  static Future <String?> getTheme () async{
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     return sharedPreferences.getString(_keyThemeMode);
  }
}

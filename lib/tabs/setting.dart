import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../preferencesHelper.dart';

class setting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Setting setting = Provider.of<Setting>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Text(AppLocalizations.of(context)!.darkMood,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w500, ),
          ),
   Switch(
   value: setting.themeMode == ThemeMode.dark,
     onChanged: (isDark) => setting.changeMode(isDark? ThemeMode.dark: ThemeMode.light),
     activeTrackColor: AppTheme.gold,
     inactiveThumbColor: Colors.grey,
   )
],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w500)
                ),
              DropdownButtonHideUnderline(
           child: DropdownButton<String>
             ( value: setting.language,
                  items:[ DropdownMenuItem(value: "en", child: Text("English"),),
                  DropdownMenuItem(value: "ar", child: Text("العربيه"),)],
                  onChanged: (selectedValue){
                if (selectedValue == null)return;
                setting.changeLanguage(selectedValue);

                  },
           borderRadius: BorderRadius.circular(20),
           )
    )
            ],

          )
        ],
      ),
    );
  }
}
class Setting with ChangeNotifier {
  ThemeMode _themeMode;
  String _language;

  Setting({required String initialLanguage, required ThemeMode initialThemeMode})
      : _language = initialLanguage,
        _themeMode = initialThemeMode;

  ThemeMode get themeMode => _themeMode;
  String get language => _language;

  bool get isDark => _themeMode == ThemeMode.dark;

  void changeMode(ThemeMode selectedMode) {
    _themeMode = selectedMode;
    PreferencesHelper.setthemeMode(selectedMode == ThemeMode.dark ? 'dark' : 'light');
    notifyListeners();
  }

  void changeLanguage(String lang) {
    _language = lang;
    PreferencesHelper.setLang(lang);
    notifyListeners();
  }
}
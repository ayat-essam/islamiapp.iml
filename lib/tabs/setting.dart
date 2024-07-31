import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:provider/provider.dart';

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
          Text('Dark Mood',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w500 ),
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
              Text('Language',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w500)
                ),
              DropdownButtonHideUnderline(
           child: DropdownButton<String>
             ( value: setting.Language,
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
ThemeMode themeMode = ThemeMode.system;
String Language = "en";
void changeMode(ThemeMode selectedMode){
  themeMode = selectedMode;
  notifyListeners();
}
void changeLanguage(String lang){
  Language = lang;
  notifyListeners();
}
}
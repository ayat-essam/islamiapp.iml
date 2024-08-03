import 'package:flutter/material.dart';
import 'package:islamiapp/tabs/hadis.dart';
import 'package:islamiapp/tabs/quran.dart';
import 'package:islamiapp/tabs/radio.dart';
import 'package:islamiapp/tabs/sebha.dart';
import 'package:islamiapp/tabs/setting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex = 0;
List<Widget> tabs = [
  hadis(),
  quran(),
  radio(),
  Sebha(),
  setting(),
];

  @override
  Widget build(BuildContext context) {
    Setting setting = Provider.of<Setting>(context);

    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage(setting.themeMode==ThemeMode.dark?
          'assets/image/dark_bg.png':
          'assets/image/bg3.png'),
          fit: BoxFit.cover,
        ),

      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.islami,),
          centerTitle: true,

        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex ,
          onTap: (index){
            currentIndex = (index);
            setState(() {});
          },

           items: [ BottomNavigationBarItem(
               icon: ImageIcon(AssetImage('assets/image/quran-quran-svgrepo-com.png'),)
               ,label: AppLocalizations.of(context)!.hadis),

             BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/image/quran.png'),)
                 ,label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/image/radio.png'),)
                 ,label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/image/sebha.png'),)
                 ,label: AppLocalizations.of(context)!.sebha),
             BottomNavigationBarItem(
                 icon:Icon(Icons.settings,)
                 ,label: AppLocalizations.of(context)!.setting),
           ],

      ),
      ),
    );

  }
}

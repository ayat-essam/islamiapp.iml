import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:islamiapp/tabs/quran.dart';
import 'package:islamiapp/tabs/setting.dart';
import 'package:islamiapp/widget/loading_indecetor.dart';
import 'package:provider/provider.dart';

class suraDetailsScr extends StatefulWidget {
static const String routeName = '/sura_details';

  @override
  State<suraDetailsScr> createState() => _suraDetailsScrState();
}

class _suraDetailsScrState extends State<suraDetailsScr> {
List<String> ayat = [];
late SuraDetailsArgu argu;

@override
  Widget build(BuildContext context) {
  Setting setting = Provider.of<Setting>(context);
    argu= ModalRoute.of(context)!.settings.arguments as SuraDetailsArgu;
    if(ayat.isEmpty) {
      loadSura();
    }
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.gold,
        borderRadius: BorderRadius.circular(25),
        image:DecorationImage(
          image: AssetImage(setting.themeMode ==ThemeMode.dark?
          'assets/image/dark_bg.png':
          'assets/image/bg3.png'),
          fit: BoxFit.cover,
        ),

      ),
    child: Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    title: Text(argu.SuraName,),
    centerTitle: true,

    ),
      body: Container(
        padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.07,
      horizontal: MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
      color: Provider.of<Setting>(context).themeMode == ThemeMode.light? AppTheme.white :
       AppTheme.darkprimary ,
      borderRadius: BorderRadius.circular(25),
      ),
        child: ayat.isEmpty?
        LoadingIndicator():ListView.builder(
          itemBuilder: (_, index) => Text(ayat[index],
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,),

        itemCount: ayat.length,),
      ),
    ),
    );
  }

 Future <void> loadSura() async{
  print(" inside fun");
  String sura = await rootBundle.loadString("assets/filesquran/${argu.index+1}.txt");
  ayat = sura.split("\n\r");
  setState(() {

  });
  }

}


import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:islamiapp/tabs/quran.dart';

class suraDetailsScr extends StatelessWidget {
static const String routeName = '/sura_details';
List<String> ayat = [
  'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ',
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
      'الرَّحْمَنِ الرَّحِيم',
           'مَالِكِ يَوْمِ الدِّينِ',
      'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
      'هْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
    'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',

];
@override
  Widget build(BuildContext context) {
    SuraDetailsArgu argu=
    ModalRoute.of(context)!.settings.arguments as SuraDetailsArgu;
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.gold,
        borderRadius: BorderRadius.circular(25),
        image:DecorationImage(
          image: AssetImage('assets/image/bg3.png'),
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
      color: AppTheme.white,
      borderRadius: BorderRadius.circular(25),
      ),
        child: ListView.builder(
          itemBuilder: (_, index) => Text(ayat[index],
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,),

        itemCount: ayat.length,),
      ),
    ),
    );
  }
}

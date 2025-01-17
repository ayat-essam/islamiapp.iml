import 'package:flutter/material.dart';
import 'package:islamiapp/sura_details_screen.dart';

class quran extends StatelessWidget {
  List<String>ArSuras = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
     Image.asset('assets/image/Screenshot (1).png',height: MediaQuery.of(context).size.height*0.25,),
       SizedBox(height: 12,),
      
       Expanded(
         child: ListView.separated(
           itemBuilder: (_, index) => GestureDetector(
             onTap: () => Navigator.of(context).pushNamed(suraDetailsScr.routeName,
             arguments: SuraDetailsArgu(
                 SuraName: ArSuras[index], index: index)),
             child: Text(
               ArSuras[index],style: Theme.of(context).textTheme.headlineSmall,
             textAlign: TextAlign.center,),
           ),
            separatorBuilder: (_, index) => SizedBox(height: 12,),
           itemCount: ArSuras.length ,
         ),
       )
     ],
   );
  }
}

class SuraDetailsArgu {
  String SuraName;
  int index ;
  SuraDetailsArgu({required this.SuraName, required this.index});
}

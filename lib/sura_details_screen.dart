import 'package:flutter/material.dart';
import 'package:islamiapp/tabs/quran.dart';
class suraDetailsScr extends StatelessWidget {
static const String routeName = '/sura_name';

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgu argu=
    ModalRoute.of(context)!.settings.arguments as SuraDetailsArgu;
    return Container(
      decoration: BoxDecoration(
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
    ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:islamiapp/tabs/hadis.dart';

class hadithDetailes extends StatelessWidget {
  static const String routeName= '/hadith_detailes';

  @override
  Widget build(BuildContext context) {
    Hadith hadith= ModalRoute.of(context)!.settings.arguments as Hadith;

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
          title: Text(hadith.title,),
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
            itemBuilder: (_, index) => Text(hadith.content[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,),

            itemCount: hadith.content.length,),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:islamiapp/tabs/hadis.dart';
import 'package:islamiapp/tabs/quran.dart';
import 'package:islamiapp/tabs/radio.dart';
import 'package:islamiapp/tabs/sebha.dart';
import 'package:islamiapp/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex = 0;
List<Widget> tabs = [
  Hadis(),
  quran(),
  radio(),
  Sebha(),
  setting(),
];

  @override
  Widget build(BuildContext context) {
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
          title: Text('اسلامي',),
          centerTitle: true,

        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex ,
          onTap: (index){
            currentIndex = (index);
            setState(() {});
          },

           items: [
             BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/image/radio.png'),)
        ,label: 'Radio'),
             BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/image/quran.png'),)
                 ,label: 'Quran Kareem'),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/image/quran-quran-svgrepo-com.png'),)
    ,label: 'Hades'),

    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/image/sebha.png'),)
    ,label: 'Sebha'),

             BottomNavigationBarItem(
                 icon:Icon(Icons.settings,)
                 ,label: 'setting'),
           ],

      ),
      ),
    );

  }
}

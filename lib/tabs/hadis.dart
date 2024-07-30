import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/tabs/hadith_detailes_scr.dart';
import 'package:islamiapp/widget/loading_indecetor.dart';

class Hadis extends StatefulWidget {
  @override
  State<Hadis> createState() => _HadisState();
}

class _HadisState extends State<Hadis> {

  List<Hadith> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    loadAhadeth(); // Ensure the method is called only once
    return Column(
      children: [
        Image.asset(
          'assets/image/hadith-icon.png',
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        SizedBox(height: 12),
        Expanded(
          child:ahadeth.isEmpty?
          LoadingIndicator():
          ListView.separated(
            itemBuilder: (_, index) => GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                hadithDetailes.routeName,
                arguments: ahadeth[index],
              ),
              child: Text(
                ahadeth[index].title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            separatorBuilder: (_, index) => SizedBox(height: 12),
            itemCount: ahadeth.length,
          ),
        ),
      ],
    );
  }

  Future<void> loadAhadeth() async {
    String ahadithContent = await rootBundle.loadString("assets/filesquran/ahadeth.txt");
    List<String> ahadithText = ahadithContent.split("#");

    ahadeth = ahadithText.map((ahadithContent) {
      List<String> hadithLines = ahadithContent.trim().split("\n");
      String title = hadithLines.first;
      hadithLines.removeAt(0);
      List<String> content = hadithLines;
      return Hadith(title: title, content: content);
    }).toList();

    setState(() {});
  }
}

class Hadith {
  String title;
  List<String> content;

  Hadith({required this.title, required this.content});
}

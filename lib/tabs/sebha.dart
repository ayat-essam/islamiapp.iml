import 'package:flutter/material.dart';
import 'dart:math';
import 'package:islamiapp/apptheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Sebha  extends StatefulWidget {
    @override
    _SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double rotationAngle = 0;
  int counter =0;
  String buttonText = "سبحان الله";
  void rotateImage() {
    setState(() {
      rotationAngle += pi/4;
      counter ++;
      if(counter == 33 ){
        if(buttonText == "سبحان الله"){
          buttonText = 'الحمدالله';
        }
        else if (buttonText == "الحمدالله"){
          buttonText = "الله اكبر";
        }else{
          buttonText ="سبحان الله";
        }
          counter = 0;
      }
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: rotateImage,
              child:Transform.rotate(
                  angle: rotationAngle,
              child: Image.asset('assets/image/Group 10.png',
              width: 200,
              height: 200,)
                ,),
            ),
            SizedBox(height: 20,),
            Text(AppLocalizations.of(context)!.countOfTasbeehs,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.gold,
              
            ),),
            SizedBox(height: 10,),
            Text(counter.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87
            ),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                  backgroundColor: AppTheme.gold,
              ),
                child:Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Text(
                    buttonText,style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ) ,)

          ],
        ),
      ),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Sebha(),
  ));
}

import 'package:flutter/material.dart';
import 'package:islamiapp/apptheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class radio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image(image: AssetImage("assets/image/radio_image.png")),
         SizedBox(height: 15,),
         Text((AppLocalizations.of(context)!.quranRadio),style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.bold,
           color:AppTheme.gold
         ),),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             IconButton(onPressed: (){}, icon: Icon (Icons.skip_previous,color: AppTheme.gold,)),
             IconButton(onPressed: (){}, icon: Icon (Icons.play_arrow,color: AppTheme.gold,)),
             IconButton(onPressed: (){}, icon: Icon (Icons.skip_next,color: AppTheme.gold,))
           ],
         )
       ],
     ),
   ),
    );
  }
}

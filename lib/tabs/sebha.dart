import 'package:flutter/material.dart';

class sebha extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Container(
        decoration: BoxDecoration(
        image:DecorationImage(
        image: AssetImage('assets/image/bg3.png'),
    fit: BoxFit.cover,
    ),
    ),
    );
  }
}

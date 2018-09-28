import 'package:flutter/material.dart';

class Muhammed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Material(
      color: Colors.green,

      child:  new Center(
        child: new Text(
          'Muhammed Essa',
          textDirection: TextDirection.rtl,
          style: new TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w600
          ),
        ),
      ),

    );



  }

}
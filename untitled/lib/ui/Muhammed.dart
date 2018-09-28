import 'package:flutter/material.dart';

class Muhammed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.deepPurpleAccent,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Ali Essa app',
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.w700,
                fontSize: 22.2),
          ),

          Expanded(
          child: new Text(
              'Ali Essa app',
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.w700,
                 ),
            ),
          )



        ],
      ),
    );
  }
}

//child: new Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//
//new Container(
//color: Colors.green,
//alignment: Alignment.center,
//
//child:  new Text(
//'Ali Essa app',
//textDirection: TextDirection.rtl,
//style: new TextStyle(color: Colors.amberAccent,
//fontWeight: FontWeight.w700,
//fontSize: 24.2),
//),
//
//),
//new Text(
//'Muhammed Essa app',
//textDirection: TextDirection.rtl,
//style: new TextStyle(color: Colors.amberAccent,
//fontWeight: FontWeight.w700,
//fontSize: 24.2),
//),
//new Text(
//'Ahmed Essa app',
//textDirection: TextDirection.rtl,
//style: new TextStyle(color: Colors.amberAccent,
//fontWeight: FontWeight.w700,
//fontSize: 24.2),
//),
//new Text(
//'Muhammed Essa app',
//textDirection: TextDirection.rtl,
//style: new TextStyle(color: Colors.amberAccent,
//fontWeight: FontWeight.w700,
//fontSize: 24.2),
//),
//],
//),

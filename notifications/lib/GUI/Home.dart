import 'dart:async';

import 'package:flutter/material.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Muhammed Essa'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You will never be satisfied.'),
                new Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }



void showBottomSheet(){
    showModalBottomSheet(context: context,
        builder: (BuildContext context){
      return new Container(
        padding: EdgeInsets.all(22.0),
        child:  new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hello Muhammed '),
            new FlatButton(onPressed: () => Navigator.pop(context),
                child: new Text('close'))
          ],
        ),
      );
        }
    );
}

String myValue = 'Muhammed';
void setValueOn(String value){
  setState(() {
    myValue = value ;
  });

}

Future showSimpleDia() async{
    await showDialog(context: context,
     builder:  (BuildContext context) {
      return  new SimpleDialog(
        title:  new Text('Muhammed Essa'),
        children: <Widget>[
          new SimpleDialogOption(child:new Text('Yes') ,
            onPressed: (){Navigator.pop(context,setValueOn('YES'));},),
          new SimpleDialogOption(child:new Text('No') ,
            onPressed: (){Navigator.pop(context,setValueOn('No'));},),
          new SimpleDialogOption(child:new Text('Maybe') ,
            onPressed: (){Navigator.pop(context,setValueOn('Maybe'));},),
        ],
      );
     });
}


final GlobalKey<ScaffoldState> scaffoldState = new GlobalKey<ScaffoldState>();

showSnackBar(){
  scaffoldState.currentState.showSnackBar(new SnackBar(content: new Text('Hey Muhammed !')));
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.deepOrange,
key: scaffoldState,
      appBar: AppBar(title: new Text('Notifications'),),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Center(

            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
             new Card(
               child: new Column(
                 children: <Widget>[
                   new Text('$myValue'),
                   new FlatButton(onPressed: _neverSatisfied, child: new Text('click me ')),
                   new FlatButton(onPressed: showBottomSheet, child: new Text('click me2 ')),
                   new FlatButton(onPressed: showSimpleDia, child: new Text('click me3 ')),
                   new RaisedButton(onPressed: showSnackBar, child: new Text('showSnackBar')),
                 ],
               ),

             ),
             new Card(

               margin: EdgeInsets.all(22.0),
               child: new Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Text('$myValue'),
                   new FlatButton(onPressed: _neverSatisfied, child: new Text('click me ')),
                   new FlatButton(onPressed: showBottomSheet, child: new Text('click me2 ')),
                   new FlatButton(onPressed: showSimpleDia, child: new Text('click me3 ')),
                   new RaisedButton(onPressed: showSnackBar, child: new Text('showSnackBar')),
                 ],
               ),

             ),
              ],

          ),



        ),
      ),
    );
  }
}
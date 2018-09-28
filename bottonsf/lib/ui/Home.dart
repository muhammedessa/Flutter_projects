import 'package:flutter/material.dart';

class Home  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return new _HomeState();
  }


}

class _HomeState extends State<Home> {

  String name = '';
  String myNum = '';
  void onClickbtn(){
    setState(() {
      name = 'Muhammed Essa';
    });
  }

  void onClickbtn2(String text){
    setState(() {
      name = text;
    });
  }

  void onClickbtn3(){
    setState(() {
      name = 'flat btn';
    });
  }


  void onAirPlane(){
    setState(() {
      myNum = 'onAirPlane btn';
    });
  }

  void onBluetooth(){
    setState(() {
      myNum = 'onBluetooth btn';
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('Bottons'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(22.0),
        child: new Column(
          children: <Widget>[
            new Text('$name'),
            new RaisedButton (
                onPressed: onClickbtn,
                child: new Text('Click me')),
            new RaisedButton (
                onPressed: () => onClickbtn2('This is parameter'),
                child: new Text('Click me2')),

            new FlatButton(onPressed: onClickbtn3, child: new Text('Click me')),

            new Text('the result is : $myNum'),
            new IconButton(icon: new Icon(Icons.airplanemode_active), onPressed: onAirPlane),
            new IconButton(icon: new Icon(Icons.bluetooth_connected), onPressed: onBluetooth)

          ],
        ),
      ),
    );
  }
}
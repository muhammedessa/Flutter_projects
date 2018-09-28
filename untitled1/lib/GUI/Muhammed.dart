import 'package:flutter/material.dart';

class Muhammed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    _onClickPrint(){
      print('Hello Alarm');
    }
    _onClickPrinting(){
      print('Hello Printing');
    }

    _onBluetooth_connected(){
      print('Bluetooth connected');
    }


    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(
        title: new Text('Essa App'),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.alarm),
              onPressed: _onClickPrint),
          new IconButton(icon: new Icon(Icons.print),
              onPressed: _onClickPrinting),
        ],
      ),


      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(icon: new Icon(Icons.add),
                onPressed: _onClickPrinting),
            new IconButton(icon: new Icon(Icons.account_box),
                onPressed: _onClickPrinting),
            new Text('Hello Muhammed',
            style: new TextStyle(
              fontSize: 32.8,
              color: Colors.deepPurple,

            ),
            ),

            new InkWell(
              child: new Text('InkWell',
                style: new TextStyle(
                  fontSize: 32.8,
                  color: Colors.amberAccent.shade50,

                ),
              ),
              onDoubleTap: () => debugPrint("double tapped!"),
              onTap:  () => debugPrint("single tapped!"),
            ),

          ],
        ),
      ),


 floatingActionButton: new FloatingActionButton(
   onPressed: _onBluetooth_connected,
   tooltip: 'hi',
   child: new Icon(Icons.bluetooth_connected),
   backgroundColor: Colors.deepOrange,
 ),

 bottomNavigationBar: new BottomNavigationBar(items: [
   new BottomNavigationBarItem(icon: new Icon(Icons.add_shopping_cart),
       title: new Text('shopping')),
   new BottomNavigationBarItem(icon: new Icon(Icons.bluetooth_connected),
       title: new Text('bluetooth')),
   new BottomNavigationBarItem(icon: new Icon(Icons.directions_bus),
       title: new Text('bus')),
   new BottomNavigationBarItem(icon: new Icon(Icons.airplanemode_active),
       title: new Text('airplane')),
 ]

   ,  onTap: (int x) => debugPrint('index $x'),
   type: BottomNavigationBarType.fixed,
   fixedColor: Colors.green,

 ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:navigation/functions/GlobalState.dart';

class First extends StatefulWidget {

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {

  TextEditingController _name;
  GlobalState _store = GlobalState.instance;

  @override
  void initState(){
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  onClickBtn(){
    _store.set('name', _name.text);
     Navigator.of(context).pushNamed('/Second');
  }

  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text('Navigation'),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('First Page'),

            new TextField(
              decoration: InputDecoration(labelText: 'Enter name'),
              controller: _name,
            ),
            new FlatButton(
                onPressed: onClickBtn,
                child: new Text('Next page')),
            new FlatButton(
                onPressed: () {Navigator.of(context).pushNamed('/Third');},
                child: new Text('Third Page ')),
          ],
        ),
      ),
    );
  }
}

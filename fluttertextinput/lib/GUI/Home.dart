import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }


}

class _HomeState extends State<Home> {

  bool value1 =  true;
  bool value2 = false;
  bool value3 = true;
  bool value4 = false;
  bool value5 = true;
  void onChangedValue(bool value){
    setState(() {
      value1 = value;
    });
  }

  void onChangedValue2(bool value){
    setState(() {
      value2 = value;
    });
  }

  void onChangedValue3(bool value){
    setState(() {
      value3 = value;
    });
  }

  void onChangedValue4(bool value){
    setState(() {
      value4 = value;
    });
  }

  void onChangedValue5(bool value){
    setState(() {
      value5 = value;
    });
  }

  String name = '';
  void onChangeValue(String value){
    setState(() {
       name = 'on changed: $value';
    });
  }

  void onSubmitValue(String value){
    setState(() {
       name = 'on Submitted: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Muhammed App') ,
      ),
      body: new Container(
          padding: new EdgeInsets.all(33.2),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('$name'),
            new TextField(
//              autocorrect: true,
//              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                icon: Icon(Icons.perm_identity),
                hintText: 'hi',
                labelText: 'Your name'
              ),
              onChanged: onChangeValue,
              onSubmitted: onSubmitValue,
            ),
            new Checkbox(value: value1, onChanged: onChangedValue , activeColor: Colors.deepOrange,),
            new Checkbox(value: value2, onChanged: onChangedValue2),
            new CheckboxListTile(value: value3,
                onChanged: onChangedValue3,
            title: new Text('Hi how are you'),
            activeColor: Colors.deepPurple,
            subtitle: new Text('Hi subtitle how are you'),
            secondary: new Icon(Icons.directions_bus),),

             new Switch(value: value4, onChanged: onChangedValue4),
            new SwitchListTile(
                value: value5,
                onChanged: onChangedValue5,
              activeColor: Colors.deepOrange,
              secondary: new Icon(Icons.directions_bus),
              title: new Text('Hi how are you',style: new TextStyle(fontSize: 23.0),),
              subtitle: new Text('Hi subtitle how are you'),
            )

          ],
        ),

      ),

      drawer: new Drawer(
        child: new Container(
          padding: EdgeInsets.all(12.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(onPressed: () => Navigator.pop(context), child: new Text('close')),
              new Text('$name'),
              new TextField(
//              autocorrect: true,
//              autofocus: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    icon: Icon(Icons.perm_identity),
                    hintText: 'hi',
                    labelText: 'Your name'
                ),
                onChanged: onChangeValue,
                onSubmitted: onSubmitValue,
              ),
              new Checkbox(value: value1, onChanged: onChangedValue , activeColor: Colors.deepOrange,),
              new Checkbox(value: value2, onChanged: onChangedValue2),
              new CheckboxListTile(value: value3,
                onChanged: onChangedValue3,
                title: new Text('Hi how are you'),
                activeColor: Colors.deepPurple,
                subtitle: new Text('Hi subtitle how are you'),
                secondary: new Icon(Icons.directions_bus),),

              new Switch(value: value4, onChanged: onChangedValue4),
              new SwitchListTile(
                value: value5,
                onChanged: onChangedValue5,
                activeColor: Colors.deepOrange,
                secondary: new Icon(Icons.directions_bus),
                title: new Text('Hi how are you',style: new TextStyle(fontSize: 23.0),),
                subtitle: new Text('Hi subtitle how are you'),
              )

            ],
          ),
        ),
      ),
    );







  }
}
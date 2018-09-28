import 'package:flutter/material.dart';


class Third extends StatefulWidget {

  Third(this.name);
  String name;
  @override
  _ThirdState createState() => _ThirdState(name);
}

class _ThirdState extends State<Third> {
  _ThirdState(this.name);
  String name;


  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: new Text('Navigation'),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Third Page'),
            new Text('your name is $name',style: TextStyle(fontSize: 33.0),),
            new FlatButton(
                onPressed: () {
                  if(Navigator.of(context).canPop()){
                    Navigator.of(context).pop();
                  }else{
                    Navigator.of(context).pushNamed('/Second');
                  }

                  },
                child: new Text('Back ')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
 


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new HomeState();
  }
}
  
class HomeState extends State<Home>{

  String name = 'Wael Hamid';
  String name2 = 'Hassan Ahmed';

  int myNum = 10;


  void _onPressBtn3(){
    setState(() {
      myNum = myNum + 10;
    });
  }


  void _onPressBtn(){
    setState(() {
      name = 'Hello World';
    });
  }

  void _onPressBtn2(){
    setState(() {
 name2 = 'Kirkuk';
    });
  }


  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.deepPurple,
         title:  new Text('GUI'),
       ),
       body: new Container(
         padding: EdgeInsets.all(53.2),

         child: new Column(

           children: <Widget>[

             new Container(
               margin: EdgeInsets.all(22.0),
              child: new Center(

                 child:  new Text(
                   "Muhammed Essa",
                   style: TextStyle(color: Colors.deepPurple,
                       fontSize: 22.0),
                   textAlign: TextAlign.center,
                 ),
               ),
             ),



       new Container(
         margin: EdgeInsets.all(22.0),

         child:  new Center(

           child:  new  FlatButton(
             color: Colors.deepPurple,
             textColor: Colors.white,
             onPressed: _onPressBtn,
             child: new Text(
               "First button",
               style: TextStyle(
                   fontSize: 33.0),
               textAlign: TextAlign.center,
             ),)
       ),


       ),


             new Center(
               child:  new Text(
                 "$name",
                 style: TextStyle(color: Colors.deepPurple,
                     fontSize: 33.0),
                 textAlign: TextAlign.center,
               ),
             ),

       new Container(
         margin: EdgeInsets.all(22.0),
         child:  new Center(
             child:  new  FlatButton(
               color: Colors.green,
               textColor: Colors.white,
               onPressed: _onPressBtn2,
               child: new Text('Second Button',style: TextStyle(
                   fontSize: 33.0),),)
         ),
       ),




             new Center(
               child:  new Text(
                 "$name2",
                 style: TextStyle(color: Colors.green,
                     fontSize: 33.0),
                 textAlign: TextAlign.center,
               ),
             ),



             new Container(
               margin: EdgeInsets.all(22.0),
               child:  new Center(
                   child:  new  FlatButton(
                     color: Colors.green,
                     textColor: Colors.white,
                     onPressed: _onPressBtn3,
                     child: new Text('Third Button',style: TextStyle(
                         fontSize: 33.0),),)
               ),
             ),

             new Center(
               child:  new Text(
                 "Your number is : $myNum",
                 style: TextStyle(color: Colors.green,
                     fontSize: 23.0),
                 textAlign: TextAlign.center,
               ),
             ),


           ],
         ),
       ),
     );
  }
 
  }
  

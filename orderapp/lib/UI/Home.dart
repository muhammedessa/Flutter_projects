import 'package:flutter/material.dart';


class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home>{

final TextEditingController _orderController = new TextEditingController();
  int radioGroup = 0;
  String myOrder = '';
  
  String orderPrice(String orderPrice , deleverPrice){
    if(orderPrice.isNotEmpty && int.parse(orderPrice) > 0){
      double result = int.parse(orderPrice) + deleverPrice;
       return myOrder = '$result';
    }else{
      print('please enter a valid Price !');
      return  myOrder =  'please enter a valid Price !' ;
    }
  }



  void radioEventHandler(int value){
    setState(() {
      radioGroup = value;
      switch(radioGroup){
        case 0:
         orderPrice(_orderController.text , 1200.0);
         myOrder = 'Burger King :  $myOrder IQD';
         break;
        case 1:
          orderPrice(_orderController.text , 3200.0);
          myOrder = 'Macdonald :  $myOrder IQD';
          break;
        case 2:
          orderPrice(_orderController.text , 2200.0);
          myOrder = 'Pizza:   $myOrder IQD';
          break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text('Order App'),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/user.png',

            ),

            new Container(
              alignment: Alignment.center,
//              margin: EdgeInsets.all(15.0),
//              padding: EdgeInsets.all(12.0),
              child: Column(
                
                children: <Widget>[
                  new Text('Please make order',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  new Padding(padding: EdgeInsets.all(12.0),)  ,
              new Container(
                margin: EdgeInsets.only( right:10.0 ),
               width: 360.0,
              child:  new TextField(

                  style: TextStyle(fontSize: 18.0,color: Colors.deepPurple),
                  decoration: InputDecoration(hintText: 'please put number',
                      labelText: 'choose you order',
                      icon: new Icon(Icons.add_circle,color: Colors.deepPurple,)),
                  controller: _orderController,
                ),
              ),
                 
                  new Padding(padding: EdgeInsets.all(12.0),)  ,

                  new Column(
                    children: <Widget>[
                      new RadioListTile<int>(
                        value: 0,
                        groupValue: radioGroup,
                        onChanged: radioEventHandler ,
                        title: new Text('Bergur king'),
                        subtitle:new Text('Bergur king fast food') ,
                        activeColor: Colors.redAccent,
                          ),
                      new RadioListTile<int>(
                        value: 1,
                        groupValue: radioGroup,
                        onChanged: radioEventHandler ,
                        title: new Text('Bergur Macdonalds'),
                        subtitle:new Text('Bergur Macdonalds fast food') ,
                        activeColor: Colors.redAccent,
                      ),
                      new RadioListTile<int>(
                        value: 2,
                        groupValue: radioGroup,
                        onChanged: radioEventHandler ,
                        title: new Text('Pizza Italian'),
                        subtitle:new Text('Pizza Italian fast food') ,
                        activeColor: Colors.redAccent,
                      )
                    ],
                  ),
                  new Padding(padding: EdgeInsets.all(12.0),)  ,
                  new Container(
                   child: new Text(
                     _orderController.text.isEmpty ? 'please enter a valid Price !':'$myOrder',
                      style: TextStyle(fontSize: 18.0,color: Colors.green.shade700),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
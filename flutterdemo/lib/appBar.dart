import "package:flutter/material.dart" ;


void main ()=> runApp(new MyApp());



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => new _MyAppState();

}

class _MyAppState extends State<MyApp> {
  String _title = "App Bar Demo" ;

  String _myState = '' ;

  void _pressed(String message){

    // wrong
//    _myState = message;

    // correct  ----怎么感觉 和react 的状态 类似啊
    setState(() {
      _myState = message;
    });
    print(message);


  }

  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar:  new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: (){ _pressed("add_alert"); }),

            new IconButton(icon: new Icon(Icons.print), onPressed: (){ _pressed("print"); }),
            new IconButton(icon: new Icon(Icons.people), onPressed: (){ _pressed("people"); }),


          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );


  }



}

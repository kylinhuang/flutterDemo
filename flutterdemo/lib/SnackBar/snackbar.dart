import 'package:flutter/material.dart';

void main ()=> runApp(
  new MaterialApp(
    home: new MyApp(),
  )
);


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }

}

class MyAppState extends State<MyApp>{

  String _text = '';

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void _onChange (String value){
    setState(() {
      _text = value;
    });
  }

  void _showSnackBar(String value){
    if(value.isEmpty) return;
      
    _scaffoldState.currentState.showSnackBar(new SnackBar(
      content: new Text(value),
    ));

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text("Snackbar Demo"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: (String value){_onChange(value);},),
              new RaisedButton(
                child: new Text('Snack Bar'),
                  onPressed: (){_showSnackBar(_text);})
            ],
          ),
        ),
      ),

    );
  }
}
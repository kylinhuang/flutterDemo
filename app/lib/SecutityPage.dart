import 'package:flutter/material.dart';
import 'package:app/Motion/Mode/MontionMode.dart';


/// SecutityPage
class SecutityPage extends StatefulWidget {
  @override
  _SecutityPageState createState() => new _SecutityPageState();
}

class _SecutityPageState extends State<SecutityPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(title: new Text("Secutity"),),
      body: new Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: 160.0,
              color: Colors.red,
            ),
            new Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 160.0,
              color: Colors.green,
            ),
            new Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 160.0,
              color: Colors.orange,
            ),

          ],
        ),
      )
    );
  }
}

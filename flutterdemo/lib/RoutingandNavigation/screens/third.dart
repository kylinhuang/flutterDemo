import 'package:flutter/material.dart';

class Third extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text("this is Third"),

            new RaisedButton(
                child: new Text('Back'),
                onPressed: (){Navigator.of(context).pop();}),


            new RaisedButton(
                child: new Text('Home'),
                onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/Home',(Route<dynamic> route)=>false);}),



          ],
        ),
      ),
    );
  }
}
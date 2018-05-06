import 'package:flutter/material.dart';

class Home extends StatelessWidget {

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
            new Text("this is Home"),
            new RaisedButton(
                child: new Text('Next'),
                onPressed: (){Navigator.of(context).pushNamed('/Second');}),


          ],
        ),
      ),
    );
  }
}
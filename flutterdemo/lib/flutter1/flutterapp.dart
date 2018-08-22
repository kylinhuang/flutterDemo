import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: (){ _pressed("add_alert"); }),

            new IconButton(icon: new Icon(Icons.print), onPressed: (){ _pressed("print"); }),
            new IconButton(icon: new Icon(Icons.people), onPressed: (){ _pressed("people"); }),

          ],
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }

  void _pressed(String s) {

  }
}
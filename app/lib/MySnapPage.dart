import 'package:flutter/material.dart';
/// MySnapPage
class MySnapPage extends StatefulWidget {
  @override
  _MySnapPageState createState() => new _MySnapPageState();
}

class _MySnapPageState extends State<MySnapPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("MySnapPage"),),
      body: new Center(child: new Text("MySnapPage")),
    );
  }
}

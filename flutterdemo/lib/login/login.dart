import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class login extends StatelessWidget {


  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;



  final VoidCallback onSubmit ;


  const login ({
    Key key,
    @required this.onSubmit,
  }) : super(key:key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new TextField(controller: _user,decoration: new InputDecoration(hintText: 'Enter a user name'),),
        new TextField(controller: _pass,decoration: new InputDecoration(hintText: 'Enter a pass word'), obscureText: true, ),


        new RaisedButton(child:new Text('Submit'),onPressed: onSubmit )
      ],
    );
  }




}

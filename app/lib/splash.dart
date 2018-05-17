import 'dart:async';

import 'package:app/LoginPage.dart';
import 'package:app/home.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}


class SplashState extends State<SplashPage> {
  Timer _t;

  @override
  void initState() {
    super.initState();
    _t = new Timer(const Duration(milliseconds: 1500), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
            builder: (BuildContext context) => new LoginPage()), (
            Route route) => route == null);
      } catch (e) {

      }
    });
  }


  @override
  void dispose() {
    _t.cancel();
    super.dispose();
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Snap',
      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("Splash Screen Example"),
//        ),
        body: new Center(
          child: new Image.asset(
              "images/splash_icon.png",
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
    );
  }
}

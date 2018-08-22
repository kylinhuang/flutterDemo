import 'dart:convert';

import 'package:app/HomePage.dart';
import 'package:app/api/Api.dart';
import 'package:app/util/NetUtils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'LoginPage';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email;
  String _password;


  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/img_logo_login.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'las@sengled.com',
      validator: (val) => val.length < 1 ? 'Username Required' : null,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (val) => _email = val,
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      validator: (val) => val.length < 1 ? 'Password Required' : null,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (val) => _password = val,

    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            _login();
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }

  _login(){
    String jsonParams = json.encode({"appCode":"snap","baiduChanelToken":"","baiduUserToken":"","gcmToken":"","os_type":"android","pwd":_password,"user":_email,"uuid":"a5a461b357cae39f","xgToken":"UM"});

    NetUtils.post(
        Api.Login,
            (data) {

          print('data is ${ data }');
          Map<String, dynamic> map = json.decode(data);
//          {"messageCode":"20020","info":"Account or password error","description":"账号或密码错误","jsessionid":"","nick_name":null,"profile_path":"","appServerAddr":"","ucenterAddr":"","snapServiceMinVerison":0,"ifCheckSessionid":0}
          var messageCode = map['messageCode'];
          if (messageCode == "200"){
            Navigator.of(context).pushNamed(HomePage.tag);
          } else {
//            _showSnackBar('登陆失败');
          }

        },
        params: jsonParams,
        errorCallback: (e) {
          print(' errorCallback ' + e);
          _showSnackBar('登陆失败');
          // 请求出错
        });

  }
  void _showSnackBar(String value){
    if(value.isEmpty) return;

    final snackBar = new SnackBar(content: new Text(value));
    Scaffold.of(context).showSnackBar(snackBar);

  }



}

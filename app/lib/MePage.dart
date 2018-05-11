import 'package:flutter/material.dart';
/// 关于我
class MePage extends StatefulWidget {
  @override
  _MePageState createState() => new _MePageState();
}

class _MePageState extends State<MePage> {

  var userName;
  var userAvatar;


  @override
  Widget build(BuildContext context) {

    return new Column(

      children: <Widget>[

        _getAvatarContainer(),

        new Container(

          alignment: Alignment.bottomCenter,
          child: new Text("hello"),
        )
      ],
      mainAxisSize: MainAxisSize.max,
    ) ;


  }

  _getAvatarContainer(){

    var avatarContainer = new Container(
      color: const Color(0xFFf39b63),
      height: 200.0,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            userAvatar == null
                ? new Image.asset(
              "images/personal_center.png",
              width: 60.0,
            )
                : new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: new DecorationImage(
                    image: new NetworkImage(userAvatar),
                    fit: BoxFit.cover),
                border: new Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            new Text(
              userName == null ? "用户名" : userName,
              style: new TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );


    Widget titleSection = new Container(
//      padding: const EdgeInsets.all(32.0),
      child: new Column(
        children: <Widget>[

          new GestureDetector(
            onTap: (){

              //TODO 点击头像
            },
            child: avatarContainer,
          ),
        ],
      ),
    );
    return titleSection ;
  }
}

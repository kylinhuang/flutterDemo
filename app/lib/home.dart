import 'dart:convert';


import 'package:app/api/Api.dart';
import 'package:app/api/req/LoginReq.dart';
import 'package:app/util/NetUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/MePage.dart';
import 'package:app/MySnapPage.dart';
import 'package:app/SecutityPage.dart';







void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  int _tabIndex = 0;
  final tabTextStyleNormal = new TextStyle(color: const Color(0xff969696));
  final tabTextStyleSelected = new TextStyle(color: const Color(0xfff39b63));

  var tabImages;
  var _body;
  var appBarTitles = ['My Snap', 'Security', 'Me'];

  Image getTabImage(path) {
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  void initData() {
    if (tabImages == null) {
      tabImages = [
        [
          getTabImage('images/tab_my_snap_unchecked.png'),
          getTabImage('images/tab_my_snap_checked.png')
        ],
        [
          getTabImage('images/tab_security_unchecked.png'),
          getTabImage('images/tab_security_checked.png')
        ],
        [
          getTabImage('images/my_account_unchecked.png'),
          getTabImage('images/my_account_checked.png')
        ],
      ];
    }
    _body = new IndexedStack(
      children: <Widget>[
        new MySnapPage(),
        new SecutityPage(),
        new MePage()
      ],
      index: _tabIndex,
    );
  }

  TextStyle getTabTextStyle(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabTextStyleSelected;
    }
    return tabTextStyleNormal;
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    return new Text(appBarTitles[curIndex], style: getTabTextStyle(curIndex));
  }

  @override
  Widget build(BuildContext context) {
    initData();
    _post();
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: const Color(0xFFf39b63)
      ),
      home: new Scaffold(
        appBar: new AppBar(
            title: new Text(appBarTitles[_tabIndex], style: new TextStyle(color: Colors.white)),
            iconTheme: new IconThemeData(color: Colors.white)
        ),
        body: _body,
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0),
                title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1),
                title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2),
                title: getTabTitle(2)),
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState((){
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }


  _post(){

//    LoginReq loginReq =   new LoginReq();

//    String json = json.toString();
//    "{}"


//    var obj = json.decode(data);
//






//    var jsonParams = {"appCode":"snap","baiduChanelToken":"","baiduUserToken":"","gcmToken":"","os_type":"android","pwd":"123456","user":"test@sengled.com","uuid":"a5a461b357cae39f","xgToken":"UM"};


    String jsonParams = json.encode({"appCode":"snap","baiduChanelToken":"","baiduUserToken":"","gcmToken":"","os_type":"android","pwd":"123456","user":"test@sengled.com","uuid":"a5a461b357cae39f","xgToken":"UM"});

    NetUtils.post(
        Api.Login,
            (data) {
              print('data is ${ data }');
//          Navigator.of(context).pop();
//          if (data != null) {
//            var obj = json.decode(data);
//            if (obj['code'] == 0) {
//              // 添加到小黑屋成功
//              showAddBlackHouseResultDialog("添加到小黑屋成功！");
//              BlackListUtils.addBlackId(authorId).then((arg) {
//                // 添加之后，重新过滤数据
//                filterList(normalTweetsList, false);
//                filterList(hotTweetsList, true);
//              });
//            } else {
//              // 添加失败
//              var msg = obj['msg'];
//              showAddBlackHouseResultDialog("添加到小黑屋失败：$msg");
//            }
//          }
        },
        params: jsonParams,
        errorCallback: (e) {

          print(' errorCallback ' + e);
          // 请求出错
//          Navigator.of(context).pop();
//          showAddBlackHouseResultDialog("网络请求出错：$e");
        });
  }




}
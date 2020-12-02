import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
// import 'package:flutter/cupertino.dart';

main(List<String> args) {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        ///这是设置状态栏的图标和字体的颜色
        ///Brightness.light  一般都是显示为白色
        ///Brightness.dark 一般都是显示为黑色
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  changeTitleName() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "BiliBili demo",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    var content = "aaa";
    return Scaffold(
      /*appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 35,
          ),
          onPressed: () {
            print('tap');
          },
        ),
        centerTitle: true,
        title: Text("BiliBili demo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_activity_rounded),
            onPressed: () {
              print("das");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert_rounded),
            onPressed: () {
              print("123");
            },
          ),
        ],
      ),*/
      backgroundColor: Colors.blue,
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.cover,
            child: Image.asset("images/a.png"),
          ),
          Positioned(
            top: 500,
            left: 60,
            child: Container(
              width: 300,
              child: RaisedButton(
                child: Text(
                  "登录",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({Key key, @required this.rpx}) : super(key: key);
  final double rpx;

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.black12, fontSize: 30);
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlexibleCell(
              icon: Icon(
            Icons.face,
            size: 40,
          )),
          FlexibleCell(
              icon: Icon(
            Icons.face,
            size: 40,
          )),
          FlexibleCell(
              icon: Icon(
            Icons.face,
            size: 40,
          )),
          /* Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange,
              child: Text(
                "123",
                style: textStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
                child: Text(
                  "123",
                  style: textStyle,
                ),
              )),
          Expanded(
            flex: 1,
            child: Text(
              "123",
              style: textStyle,
            ),
          ),*/
        ],
      ),
    );
  }
}

class FlexibleCell extends StatelessWidget {
  const FlexibleCell({Key key, @required this.icon}) : super(key: key);
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        child: icon,
      ),
    );
  }
}

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.face,
              size: 40,
            ),
          ), //avartar
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "desc",
                style: TextStyle(color: Colors.black45),
              )
            ],
          )
        ],
      ),
    );
  }
}

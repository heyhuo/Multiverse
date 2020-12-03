import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
// import 'package:flutter/cupertino.dart';

main(List<String> args) {
  runApp(MyApp());
  if (Platform.isIOS) {
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
      title: "Cyper Multiverse",
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
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
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
        title: Text("Cyper Multiverse"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.workspaces_filled),
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
      ),
      // backgroundColor: Colors.black.withOpacity(0.8),
      body: ItemDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        color: Colors.deepPurple[900].withOpacity(0.7),
        elevation: 20,
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                topLeft: Radius.circular(40))),
        child: Container(
            // decoration: BoxDecoration(color: Colors.purple),
            ),
      ),
    );
  }
}

class ItemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.4),
            offset: Offset(10, 10))
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset("images/item-img1.jpg"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "练习一下赛博朋克与日式动漫结合的画风！🎡",
                    style: TextStyle(fontSize: 18)),
                TextSpan(
                    text: "赛博朋克赛高",
                    style: TextStyle(fontSize: 15, color: Colors.red)),
                WidgetSpan(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/avatar.jpg"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "黑火",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                    Container(
                      child: Text("999"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlue[700].withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 20.0,
                color: Colors.white54.withOpacity(0.3),
                offset: Offset(10, 10))
          ]),
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Container(
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("images/avatar.jpg"),
                )))),
        title: Text(
          "平行宇宙",
          style: TextStyle(
              color: Colors.yellow[500],
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "欢迎来到赛博朋克般的平行宇宙欢迎来到赛博朋克般的平行宇宙欢迎来到赛博朋克般的平行宇宙欢迎来到赛博朋克般的平行宇宙欢迎来到赛博朋克般的平行宇宙欢迎来到赛博朋克般的平行宇宙",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              letterSpacing: 2),
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
        ),
        trailing: Container(
          child: Container(
            child: Icon(Icons.grade_outlined),
          ),
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  // final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.cover,
            child: Image.asset("images/login-bg.png"),
          ),
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Positioned(
              top: 500,
              left: 60,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    child: RaisedButton(
                      child: Text(
                        "登录",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                ],
              ))
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

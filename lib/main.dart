import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // primarySwatch:Colors.blueGrey,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("平行宇宙"),
          backgroundColor:Color.fromRGBO(33, 30, 85, 1) ,
        ),
        body: Container(
          // child: Text("这是一个内部元素，这是一个内部元素，这是一个内部元素，"),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

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
          margin: EdgeInsetsDirectional.only(start: 16, top: 10),
          padding: EdgeInsetsDirectional.only(start: 20, top: 20),
          // child: Text("这是一个内部元素"),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black26,
            shape: BoxShape.circle,
            border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.7), width: 4),
            // borderRadius: BorderRadius.circular(5),
            // gradient: LinearGradient(
            //   colors: [Colors.red, Colors.blueGrey,Colors.green]
            // ),
            boxShadow:[
              BoxShadow(color:  Colors.grey[400],blurRadius: 5.0)
            ],
            image: DecorationImage(
              image:NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606736808909&di=5a2300977efc591c20a3687dc13e6ac1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F27%2F20150927200243_YmaQB.jpeg")
            ),
          ),
        ),
      ),
    );
  }
}

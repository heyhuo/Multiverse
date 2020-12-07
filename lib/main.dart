import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "平行宇宙",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Home(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
            child: BtmBar(),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double rpx = screenWidth / 750;
    String src1 = "images/pic-1.png";
    String src2 = "images/pic-2.png";
    String src3 = "images/pic-3.png";
    String src4 = "images/pic-4.png";
    String src5 = "images/pic-5.png";
    String src6 = "images/pic-6.png";
    String src7 = "images/pic-7.png";
    String src8 = "images/pic-8.png";
    String src9 = "images/pic-9.png";

    return Stack(children: [
      Positioned(
        top: 0,
        height: 120,
        width: screenWidth,
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          child: TopTab(),
        ),
      ),
      Positioned(
        top: 100,
        width: screenWidth,
        height: screenHeight,
        child: Container(
          padding: EdgeInsets.only(left: 2.5, top: 0),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                children: [
                  getPictureCnt(screenWidth, screenHeight, src1),
                  getPictureCnt(screenWidth, screenHeight, src2),
                  getPictureCnt(screenWidth, screenHeight, src3),
                ],
              ),
              Row(
                children: [
                  getPictureCnt(screenWidth, screenHeight, src5),
                  getPictureCnt(screenWidth, screenHeight, src4),
                  getPictureCnt(screenWidth, screenHeight, src6),
                ],
              ),
              Row(
                children: [
                  getPictureCnt(screenWidth, screenHeight, src7),
                  getPictureCnt(screenWidth, screenHeight, src8),
                  getPictureCnt(screenWidth, screenHeight, src9),
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 5,
        width: 0.7 * screenWidth,
        height: 150,
        left: 10,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: BtmContent(),
        ),
      ),
      Positioned(
        right: 10,
        width: 0.2 * screenWidth,
        height: 0.4 * screenHeight,
        top: 0.34 * screenHeight,
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            /* boxShadow: [
              BoxShadow(
                  blurRadius: 30, color: Colors.grey[600], offset: Offset(2, 2))
            ],*/
          ),
          child: getButtonList(),
        ),
      ),
      Positioned(
        bottom: 10,
        right: 10,
        width: 0.2 * screenWidth,
        height: 0.2 * screenWidth,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.black, offset: Offset(2, 2))
            ],
          ),
          child: RotateAlbum(),
        ),
      )
    ]);
  }
}

getPictureCnt(double screenWidth, double screenHeight, String src) {
  return Container(
    width: 0.32 * screenWidth,
    height: 0.25 * screenHeight,
    margin: EdgeInsets.all(2),
    decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
    child: Image.asset(src, width: 40, fit: BoxFit.fill, height: 40),
  );
}

/*getContent(double screenWidth, double screenHeight,List<String> src) {
  return Row(
    children: [
     Hero(
       child: getPictureCnt(screenWidth,screenHeight),
       on
     )
    ],
  );
}*/

class TopTab extends StatefulWidget {
  TopTab({Key key}) : super(key: key);

  @override
  _TopTabState createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TabBar(
                indicatorColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white, fontSize: 23),
                unselectedLabelStyle:
                    TextStyle(color: Colors.grey[700], fontSize: 18),
                controller: _controller,
                tabs: <Widget>[
                  Text("关注"),
                  Text("推荐"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.live_tv,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BtmBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        getBtmTextWidget("首页", true),
        getBtmTextWidget("同城", false),
        AddIcon(),
        getBtmTextWidget("消息", false),
        getBtmTextWidget("我", false),
      ],
    ));
  }
}

class AddIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: 40,
      width: 60,
      child: Stack(
        children: [
          Positioned(
            height: 35,
            width: 50,
            top: 4,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow[600].withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            height: 35,
            width: 50,
            right: 6,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600].withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            height: 35,
            width: 50,
            right: 3,
            top: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

getBtmTextWidget(String content, bool ifSelected) {
  return Text("$content",
      style: ifSelected
          ? TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)
          : TextStyle(fontSize: 18, color: Colors.grey[700]));
}

class BtmContent extends StatelessWidget {
  var txtStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  var subTxtStyle = TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:,

      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "@平行宇宙",
              style: txtStyle,
            ),
            subtitle: Text(
              "这是一个平行时空发来的测试文案🌎金木水火土星人们向地球人问好！",
              style: subTxtStyle,
            ),
          ),
          Row(
            children: [
              // Icon(Icons.music_note),
              // Marquee(text: "大萨达奥多所所多撒多撒奥所多大所撒大所大多所"),
            ],
          )
        ],
      ),
    );
  }
}

class RotateAlbum extends StatefulWidget {
  @override
  _RotateAlbumState createState() => _RotateAlbumState();
}

class _RotateAlbumState extends State<RotateAlbum>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              // _controller.forward(from: 0.0);
            }
          }),
        child: Stack(children: [
          Positioned(
              top: 3,
              left: 3,
              child: Container(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/album-1.jpg"),
                ),
              )),
          Positioned(
            top: 8,
            left: 8,
            width: 50,
            height: 50,
            child: Container(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white.withOpacity(0.9),
                size: 30,
              ),
              /*decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10))*/
            ),
          ),
        ]));
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: animation);
  }
}

getButtonList() {
  var iconSize = 50.0;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 60,
        height: 80,
        child: Stack(
          children: [
            Container(
              width: 60,
              height: 70,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 19,
              child: Container(
                width: 25,
                height: 25,
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.grey[300],
                ),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
      ),
      IconText(
          text: "999w",
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
            size: iconSize,
          )),
      IconText(
          text: "999w",
          icon: Icon(
            Icons.message_outlined,
            size: iconSize,
            color: Colors.white,
          )),
      IconText(
          text: "999w",
          icon: Icon(
            Icons.reply,
            size: iconSize,
            color: Colors.white,
          ))
    ],
  );
}

class IconText extends StatelessWidget {
  final Icon icon;
  final String text;

  const IconText({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_first_app/model/simpleCard.dart';
import 'package:flutter_first_app/model/simpleColumn.dart';
import 'package:flutter_first_app/model/simpleGridview.dart';
import 'package:flutter_first_app/model/simpleNav.dart';
import 'package:flutter_first_app/model/simpleNavGet.dart';
import 'package:flutter_first_app/model/simpleNavWith.dart';
import 'package:flutter_first_app/model/simpleRow.dart';
import 'package:flutter_first_app/model/simpleStack.dart';
import 'package:flutter_first_app/model/simpleView.dart';
import 'package:flutter_first_app/model/simpleViewWithList.dart';

class MyNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Text(
            '普通文字-哪个菜好吃吃得多',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 200, 100, 100),
            ),
          ),
          Container(
            child: Text('Container的一些-蹲坑查询'),
            alignment: Alignment.topLeft,
            width: 100.0,
            height: 50.0,
            //color: Colors.blueGrey, //与decoration互斥
            padding: const EdgeInsets.all(10.0),
            //儿子距离自己容器的边距=内边距
            margin: const EdgeInsets.fromLTRB(20.0, 5, 5, 5),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.indigo, Colors.pink]),
              border: Border.all(width: 2.0, color: Colors.red),
            ),
          ),
          Text("下面是加载图片"),
          Container(
            child: new Image.network(
              //http://www.sippr.cn/images/logo.png
              //http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
              fit: BoxFit.fill,
              //color: Colors.indigo,
              //colorBlendMode: BlendMode.difference, //图片和颜色的混合
              repeat: ImageRepeat.repeatX,
            ),
            width: 300.0,
            height: 100.0,
            color: Colors.lightGreen,
          ),
          Container(
            child: Image.asset('assets/images/02.jpg'),
            width: 30.0,
            height: 150.0,
            color: Colors.black,
          ),
          Text("下面是简单页面"),
          IconButton(
            icon: Icon(Icons.perm_contact_calendar),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleView()));
            },
          ),
          Text("下面是横向listview"),
          Center(
            child: Container(
              height: 100.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  new Container(
                    width: 180.0,
                    color: Colors.lightBlue,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.lightBlueAccent,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.lime,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ),
          Text("下面是带参页面"),
          IconButton(
            icon: Icon(Icons.perm_contact_calendar),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleViewWithList(
                            items: new List<String>.generate(
                                100, (i) => "item ${i}"),
                          )));
            },
          ),
          Text("下面是网格页面"),
          IconButton(
            icon: Icon(Icons.perm_data_setting),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleGridview()));
            },
          ),
          Text("下面是跳转row页面"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleRow()));
            },
          ),
          Text("下面是跳转column页面"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleColumn()));
            },
          ),
          Text("stack布局"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleStack()));
            },
          ),
          Text("card"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleCard()));
            },
          ),
          Text("navigator"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleNav()));
            },
          ),
          Text("navigatorWithArgs"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleNavWith()));
            },
          ),
          Text("navigatorGet"),
          IconButton(
            icon: Icon(Icons.ac_unit),
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SimpleNavGet()));
            },
          ),
        ],
      ),
    );
  }
}

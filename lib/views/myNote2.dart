import 'package:flutter/material.dart';
import 'package:flutter_first_app/components/bottom_bar.dart';
import 'package:flutter_first_app/model/simpleNavGet.dart';
import 'package:flutter_first_app/model/simpleNavName.dart';

class MyNote2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Text("点击我进入底部导航栏"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BottomBar()));
            },
          ),
          Divider(
            height: 5,
          ),
          GestureDetector(
            child: Text("点击我进入navName"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => RoutePage()));
            },
          ),
          Divider(
            height: 5,
          ),
        ],
      ),
    );
  }
}

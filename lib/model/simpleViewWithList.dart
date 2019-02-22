import 'package:flutter/material.dart';

class SimpleViewWithList extends StatelessWidget {
  final List<String> items;

//必须的参数，父类没有需要sper
  SimpleViewWithList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(),
      body: new ListView.builder(
        itemCount: 100, //items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text("${items[index]}"),
          );
        },
      ),
    );
  }
}

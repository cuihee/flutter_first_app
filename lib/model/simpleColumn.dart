import 'package:flutter/material.dart';

class SimpleColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center, //现在是column所以主轴是竖
        children: <Widget>[
          new RaisedButton(
            onPressed: () {},
            color: Colors.red,
            child: Text('red'),
          ),
          Expanded(
            child: new RaisedButton(
              onPressed: () {},
              color: Colors.yellow,
              child: Text('yellow'),
            ),
          ),
          new RaisedButton(
            onPressed: () {},
            color: Colors.green,
            child: Text('green'),
          ),
        ],
      ),
    );
  }
}

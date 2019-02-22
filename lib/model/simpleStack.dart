import 'package:flutter/material.dart';

class SimpleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundColor: Colors.green,
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('data'),
        ),
        new Positioned(
          top: 110,
          left: 5,
          child: Text('woshi 绝对定位'),
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Row'),
        ),
        body: new Center(
          child: stack,
        ));
  }
}

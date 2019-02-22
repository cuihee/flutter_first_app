import 'package:flutter/material.dart';

class SimpleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: new Row(
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

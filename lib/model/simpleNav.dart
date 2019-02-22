import 'package:flutter/material.dart';

class SimpleNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("进入下一页"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new SimpleNav2()));
          },
        ),
      ),
    );
  }
}

class SimpleNav2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二页"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回"),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

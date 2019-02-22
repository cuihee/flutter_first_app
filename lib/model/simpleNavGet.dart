import 'package:flutter/material.dart';

class SimpleNavGet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("跳转返回数据"),
      ),
      body: Center(
        child: MyRouteButton(),
      ),
    );
  }
}

class MyRouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navgateTo(context);
      },
      child: Text("开始"),
    );
  }

  _navgateTo(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SmallPage()));

    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('$result'))); //<<<<<<<<<<<<<<<<<这个可以调试用 当 showtoast
  }
}

class SmallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am smallPage"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("111"),
              onPressed: () {
                Navigator.pop(context, "1111");
              },
            ),
            RaisedButton(
              child: Text("222"),
              onPressed: () {
                Navigator.pop(context, "2222");
              },
            )
          ],
        ),
      ),
    );
  }
}

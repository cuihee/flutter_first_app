import 'package:flutter/material.dart';
import 'package:flutter_first_app/independence/charts/chart01.dart';
import 'package:flutter_first_app/independence/charts/simple_bar_charts.dart';

void main() {
  runApp(new charts_summary());
}

class charts_summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _charts_summary(),
    );
  }
}

class _charts_summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("示例全部在 https://google.github.io/charts/flutter/gallery.html "),
          Divider(),
          MaterialButton(
              child: Text("点击进入示例"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chart01(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

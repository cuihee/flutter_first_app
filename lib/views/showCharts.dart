import 'package:flutter/material.dart';

class ShowCharts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ShowCharts();
  }
}

class _ShowCharts extends State<ShowCharts> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Text('data'),
          Text('图标还没做好'),
          SizedBox(
            height: 80,
          ),
          Text('data'),
          SizedBox(
            height: 80,
          ),
          Text('data3'),
        ],
      ),
    );
  }
}

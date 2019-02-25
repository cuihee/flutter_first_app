import 'package:flutter/material.dart';
import 'package:flutter_first_app/independence/charts/chart01.dart';
import 'package:flutter_first_app/independence/http/httpClient.dart';
import 'package:flutter_first_app/independence/http/http_client_dio.dart';

void main() {
  runApp(new http_summary());
}

class http_summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _http_summary(),
    );
  }
}

class _http_summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //Text("示例全部在  "),
          Divider(),
          MaterialButton(
              child: Text("点击进入http示例"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HttpPage(),
                  ),
                );
              }),
          Divider(),
          MaterialButton(
              child: Text("点击进入http dio示例"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HttpPage2(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

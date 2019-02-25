//https://github.com/flutterchina/dio

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

//使用网络请求json
class HttpPage2 extends StatefulWidget {
  @override
  _HttpPage2State createState() => _HttpPage2State();
}

class _HttpPage2State extends State<HttpPage2> {
  Response response;
  String data;

  void getHttp() async {
    try {
      response = await Dio().get("http://www.baidu.com");
      setState(() {
        data = response.data;
      });
      return print(response);
    } catch (e) {
      return print(e);
    }
  }

  @override
  void initState() {
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "get:\n ${data}",
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

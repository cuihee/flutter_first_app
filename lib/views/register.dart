import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  //https://threejs.org/examples/#webgl_lights_physical
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text("这个页面是用来注册的"),
            ],
          ),
        ));
  }
}

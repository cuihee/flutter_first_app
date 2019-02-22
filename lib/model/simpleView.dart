import 'package:flutter/material.dart';

class SimpleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("data"),
          ),
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("data"),
          ),
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("data"),
          ),
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("data"),
          ),
          new ListTile(
            leading: new Icon(Icons.perm_camera_mic),
            title: new Text("data"),
          ),
        ],
      ),
    );
  }
}

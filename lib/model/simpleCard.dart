import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("data"),
            subtitle: Text("222"),
            leading: new Icon(Icons.access_alarms, color: Colors.limeAccent),
          ),
          ListTile(
            title: Text("data"),
            subtitle: Text("222"),
            leading: new Icon(Icons.access_alarms, color: Colors.limeAccent),
          ),
          new Divider(),
          ListTile(
            title: Text("data"),
            subtitle: Text("222"),
            leading: new Icon(Icons.access_alarms, color: Colors.limeAccent),
          ),
          new Divider(),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}

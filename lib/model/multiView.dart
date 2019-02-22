import 'package:flutter/material.dart';

class MultiView extends StatefulWidget {
  String _title;

  MultiView(this._title);

  @override
  _MultiViewState createState() => _MultiViewState();
}

class _MultiViewState extends State<MultiView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data"),
    );
  }
}

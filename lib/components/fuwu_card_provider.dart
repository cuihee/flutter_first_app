import 'package:flutter/material.dart';

class FuwuCardProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Card(
          margin: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0,
          ),
          color: Colors.blue[50],
          //阴影大小-默认2.0
          elevation: 5.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.question_answer),
                title: Text("能源中心"),
                subtitle: Text('此部门共提供10项服务'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('查看全部'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

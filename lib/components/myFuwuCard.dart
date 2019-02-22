import 'package:flutter/material.dart';
import 'package:flutter_first_app/views/showCharts.dart';

class MyFuwuCard extends StatelessWidget {
  String title = '未命名的标题', subtitle = '未命名副标题';

  MyFuwuCard({String title, String subtitle}) {
    this.title = title;
    this.subtitle = subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildCard(context),
    );
  }

  Widget buildCard(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      color: Colors.blue[50],
      //阴影大小-默认2.0
      elevation: 5.0,
      child: MaterialButton(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("能耗报告"),
              subtitle: Text('查看实时数据与历史数据'),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShowCharts()));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_first_app/independence/charts/simple_bar_charts.dart';
import 'package:flutter_first_app/components/showCharts.dart';

class FuwuCard extends StatelessWidget {
  String title = '未命名的标题', subtitle = '未命名副标题';

  FuwuCard({String title, String subtitle}) {
    this.title = title;
    this.subtitle = subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Container(
      child: buildCard(context),
    ));
  }

  Widget buildCard(BuildContext context) {
    return new Card(
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
            title: Text("能耗报告"),
            subtitle: Text('查看实时数据与历史数据'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('查看'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SimpleBarChart.withSampleData(),
                      ),
                    );
                  },
                ),
                FlatButton(
                  child: Text('订阅'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

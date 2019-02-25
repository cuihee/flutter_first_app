import 'package:flutter/material.dart';
import 'package:flutter_first_app/model/chart_bean.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/*
计划是传进来数据和表格形式组合好的widget，在这里显示出来
 */
class ShowCharts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ShowCharts();
  }
}

class _ShowCharts extends State<ShowCharts> {
  List<Widget> widgetList = List();
  bool animate;

  @override
  void initState() {
    super.initState();
    loadChartData();
  }

  //当整个页面dispose时，记得把控制器也dispose掉，释放内存
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              new Container(
                child: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "刷新中",
                      gravity: ToastGravity.TOP,
                      toastLength: Toast.LENGTH_LONG,
                    );
                  },
                ),

              )
            ],
            leading: null,
            centerTitle: true,
            pinned: true,
            backgroundColor: Colors.blue,
            expandedHeight: 150.0,
            flexibleSpace: new FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/02.jpg', fit: BoxFit.cover,),
              centerTitle: false,
              title: const Text('某某图表'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return widgetList[index];
              },
              childCount: widgetList.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadChartData() async {
    widgetList.add(
      charts.TimeSeriesChart(
        ChartFlutterBean.createSampleData0(),
        animate: animate,
        dateTimeFactory: new charts.LocalDateTimeFactory(),
      ),
    );
    widgetList.add(
      new charts.PieChart(
        ChartFlutterBean.createSampleData1(),
        animate: animate,
        defaultRenderer: new charts.ArcRendererConfig(arcWidth: 60),
      ),
    );
    widgetList.add(
      new charts.ScatterPlotChart(
        ChartFlutterBean.createSampleData3(),
        animate: animate,
        defaultRenderer: new charts.PointRendererConfig(
          pointRendererDecorators: [
            new charts.ComparisonPointsDecorator(
              symbolRenderer: new charts.CylinderSymbolRenderer(),
            ),
          ],
        ),
      ),
    );
    widgetList.add(
      new charts.BarChart(
        ChartFlutterBean.createSampleData(),
        animate: animate,
        barGroupingType: charts.BarGroupingType.groupedStacked,
      ),
    );
    widgetList.add(
      new charts.BarChart(
        new ChartFlutterBean().getData(),
        animate: animate,
        behaviors: [
          new charts.SeriesLegend(
              position: charts.BehaviorPosition.end, desiredMaxRows: 2),
        ],
      ),
    );
    widgetList.add(
      new charts.BarChart(
        ChartFlutterBean.createSampleData(),
        animate: animate,
        barGroupingType: charts.BarGroupingType.groupedStacked,
      ),
    );
    widgetList.add(
      new charts.BarChart(
        new ChartFlutterBean().getData(),
        animate: animate,
        behaviors: [
          new charts.SeriesLegend(
              position: charts.BehaviorPosition.end, desiredMaxRows: 2),
        ],
      ),
    );
  }
}

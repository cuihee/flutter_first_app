import 'package:flutter/material.dart';
import 'package:flutter_first_app/independence/charts/bar_charts_grouped_stacked_weight_pattern.dart';
import 'package:flutter_first_app/independence/charts/time_series_chart_symbol_annotation.dart';
import 'simple_bar_charts.dart';

class chart01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MaterialButton(
            child: Text("bar_chart_simple"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleBarChart.withSampleData(),
                ),
              );
            },
          ),
          MaterialButton(
            child: Text("GroupedStackedWeightPatternBarChart"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      GroupedStackedWeightPatternBarChart.withSampleData(),
                ),
              );
            },
          ),
          MaterialButton(
            child: Text("TimeSeriesSymbolAnnotationChart"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TimeSeriesSymbolAnnotationChart.withSampleData(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

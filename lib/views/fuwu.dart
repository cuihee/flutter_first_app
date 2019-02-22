import 'package:flutter/material.dart';
import 'package:flutter_first_app/components/fuwu_card.dart';
import 'package:flutter_first_app/components/fuwu_card_provider.dart';

class FuWu extends StatefulWidget {
  const FuWu({Key key}) : super(key: key);

  @override
  _FuWu createState() => _FuWu();
}

class _FuWu extends State<FuWu> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '我的服务'),
    Tab(text: '全部服务'),
    Tab(text: '暂留'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        labelColor: Colors.blue,
        labelStyle: TextStyle(fontWeight: FontWeight.normal),
        labelPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        isScrollable: true,
        unselectedLabelColor: Colors.blueGrey,
        controller: _tabController,
        tabs: myTabs,
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        MyFuwu(),
        AllFuwu(),
        Text('暂留'),
      ]),
    );
  }

  Widget AllFuwu() {
    return new ListView(
      children: <Widget>[
        new FuwuCardProvider(),
        new FuwuCardProvider(),
        new FuwuCard(),
        new FuwuCard(),
        new FuwuCard(),
        Center(
          child: Text('没有了'),
        ),
        new SizedBox(
          height: 80.0,
        ),
      ],
    );
  }

  Widget MyFuwu() {
    return new ListView(
      children: <Widget>[
        new FuwuCard(),
        new FuwuCard(),
        Center(
          child: Text('没有了'),
        ),
        new SizedBox(
          height: 80.0,
        ),
      ],
    );
  }
}

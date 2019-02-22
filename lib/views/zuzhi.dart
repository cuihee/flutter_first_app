import 'package:flutter/material.dart';

class ZuZhi extends StatefulWidget {
  @override
  _ZuZhi createState() => _ZuZhi();
}

class _ZuZhi extends State<ZuZhi> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '我的组织'),
    Tab(text: '部门2'),
    Tab(text: '部门3'),
    Tab(text: '部门4'),
    Tab(text: '部门5'),
    Tab(text: '部门6'),
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
        labelPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        isScrollable: true,
        unselectedLabelColor: Colors.blueGrey,
        controller: _tabController,
        tabs: myTabs,
      ),
      //每个tab显示的内容
      body: TabBarView(controller: _tabController, children: <Widget>[
        MySection(),
        MySection(),
        Text('暂留'),
        Text('暂留'),
        Text('暂留'),
        Text('暂留'),
      ]),
    );
  }

  Widget MySection() {
    return new ListView(
      children: <Widget>[
        new Card(
          child: Text('聊天1'),
        ),
        new Card(
          child: Text('聊天1'),
        ),
        new Card(
          child: Text('聊天1'),
        ),
        new Card(
          child: Text('聊天1'),
        ),
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

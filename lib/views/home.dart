import 'package:flutter/material.dart';
import 'package:flutter_first_app/views/dongtai.dart';
import 'package:flutter_first_app/views/fuwu.dart';
import 'package:flutter_first_app/views/myNote.dart';
import 'package:flutter_first_app/views/myNote2.dart';
import 'package:flutter_first_app/views/zuzhi.dart';
import 'package:oktoast/oktoast.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  var nowHomeShow = {
    0: DongTai(),
    1: ZuZhi(),
    2: FuWu(),
  };

  //List tabs = [["公司动态", "关注动态", "我的动态"],["我的组织", "全部组织"],["已订阅服务", "全部服务"]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        // leading: new IconButton(
        //   icon: new Icon(Icons.menu),
        //   tooltip: '左上角的三横',
        //   onPressed: (){new MyDrawer();},
        //   ),

        title: Text("OutZone"),
        actions: <Widget>[
          //导航栏右侧菜单
          //IconButton(icon: Icon(Icons.info_outline), onPressed: () {showToast('...');}),
          new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showToast('搜索');
              }),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showToast('多功能按钮');
              }),
        ],
      ),

      drawer: new MyDrawer(),
      //左抽屉
      //drawer: new UserAccountsDrawerHeader(accountName: Text("testName"), accountEmail: Text("testName")),

      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('动态'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              //color: Colors.lightBlue,
            ),
            title: Text('组织'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('服务'),
          ),
        ],
        currentIndex: _selectedIndex, //哪个导航按钮高亮
        fixedColor: Colors.blue,
        onTap: _onBottomNavigationTapped,
      ),

      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.keyboard_voice),
          onPressed: _onFloatingActionButton),

      body: nowHomeShow[_selectedIndex],
    );
  }

  void _onBottomNavigationTapped(int index) {
    setState(() {
      _selectedIndex = index; //响应点击了第几个底部导航
    });
  }

  void _onFloatingActionButton() {
    showToast("悬浮按钮");
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        //removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.person),
              accountName: Text("我来显示名字"),
              accountEmail: Text("我来显示邮箱"),
              onDetailsPressed: () {
                showToast('这里弹出修改用户信息的页面');
              },
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.insert_emoticon),
                    title: const Text('功能1'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNote(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.insert_emoticon),
                    title: const Text('功能2'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNote2(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('设置'),
                    onTap: () {
                      showToast('hello settings');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text(
                      '登出',
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                    onTap: () {
                      showToast('登出');
                      //todo 堆栈只剩login界面才对
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SimpleGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        //距离外
        crossAxisSpacing: 5.0,
        //内各个网格距离
        crossAxisCount: 3,
        //几列
        childAspectRatio: 0.7,
        //宽比高的值
        children: <Widget>[
          const Text('data'),
          const Text('11'),
          const Text('33'),
          const Text('44'),
          const Text('5'),
          const Text('5'),
          const Text('666'),
          const Text('77777'),
          const Text('9999999'),
          const Text('data'),
          const Text('11'),
          const Text('33'),
          const Text('44'),
          const Text('5'),
          const Text('666'),
          const Text('77777'),
          const Text('9999999'),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
            'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png',
            fit: BoxFit.fill,
          ),
          new Image.network(
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png'),
          new Image.network(
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png'),
          new Image.network(
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png'),
          new Image.network(
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png'),
          new Image.network(
              'http://dota2dbpic.uuu9.com/14687119-de9d-4601-bb23-cc395cc5c93flegion_commander_full_.png'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliverPage12 extends StatefulWidget {
  const SliverPage12({Key? key}) : super(key: key);

  @override
  State<SliverPage12> createState() => _SliverPage12State();
}

class _SliverPage12State extends State<SliverPage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各式各样的Sliver列表'),
      ),
      body: CustomScrollView(slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              const [
                Text(
                    'SliverList + SliverChildListDelegate - 等同于 ListView(children: [])'),
                Text(
                    'SliverList + SliverChildBuilderDelegate - 等同于 ListView.build()'),
                Text('SliverFixedExtentList - 等同于 ListView, 指定itemExtent'),
                Text('SliverPrototypeExtentList - ListView,指定prototypeItem'),
              ],
            ),
          ),
        ),
        SliverList(
          // 等同于 ListView.build()
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                color: Colors.redAccent,
              );
            },
            childCount: 1,
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                color: Colors.greenAccent,
              );
            },
            childCount: 1,
          ),
          itemExtent: 50,
        ),
        SliverPrototypeExtentList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                color: Colors.blueAccent,
              );
            },
            childCount: 1,
          ),
          prototypeItem: Container(
            height: 50,
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(const [
            Icon(Icons.ac_unit),
            Icon(Icons.baby_changing_station),
            Icon(Icons.cabin),
            Icon(Icons.dashboard),
          ]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 100,
          children: const [
            Icon(Icons.ac_unit),
            Icon(Icons.baby_changing_station),
            Icon(Icons.cabin),
            Icon(Icons.dashboard),
          ],
        )
      ]),
    );
  }
}

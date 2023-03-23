import 'package:flutter/material.dart';

class ScrollablePage16 extends StatefulWidget {
  const ScrollablePage16({Key? key}) : super(key: key);

  @override
  State<ScrollablePage16> createState() => _ScrollablePage16State();
}

class _ScrollablePage16State extends State<ScrollablePage16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('二维网格列表 - GridView'),
      ),
      body: GridView.builder(
        //网格委托
        // SliverGridDelegateWithFixedCrossAxisCount 固定交叉轴数量 等同于 GridView.count
        // SliverGridDelegateWithMaxCrossAxisExtent 固定交叉轴最大长度 等同于 GridView.extent
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 16 / 9,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 6.0,
        ),
        itemCount: 200,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue[index % 8 * 100],
          );
        },
      ),
    );
  }
}

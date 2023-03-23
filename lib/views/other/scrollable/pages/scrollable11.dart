import 'package:flutter/material.dart';

class ScrollablePage11 extends StatefulWidget {
  const ScrollablePage11({Key? key}) : super(key: key);

  @override
  State<ScrollablePage11> createState() => _ScrollablePage11State();
}

class _ScrollablePage11State extends State<ScrollablePage11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('滚动列表 - ListView.builder'),
      ),
      // ListView(children: []) - 数据一次性渲染
      // ListView.builder 动态加载内容 - 列表指定 itemExtent 或 prototypeItem 会有更高的性能
      // ListView.separated 在生成的列表项之间添加一个分割组件
      body: Scrollbar(
        child: ListView.separated(
          // cacheExtent 缓存区域
          //不指定itemCount 为无限列表
          itemCount: 100,
          //构建与内容分离的部件
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.red,
              indent: 10,
              endIndent: 10,
              thickness: 1,
              height: 10,
            );
          },
          // 根据递增的index构建内容区域
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.blue[index % 9 * 100],
              alignment: Alignment.center,
              child: Text(
                '${index + 1}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            );
          },
        ),
      ),
    );
  }
}

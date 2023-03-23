import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export './pages/scrollable11.dart';
export './pages/scrollable12.dart';
export './pages/scrollable13.dart';
export './pages/scrollable14.dart';
export './pages/scrollable15.dart';
export './pages/scrollable16.dart';
export './pages/scrollable17.dart';

class ScrollablePage extends StatefulWidget {
  const ScrollablePage({Key? key}) : super(key: key);

  @override
  State<ScrollablePage> createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('滚动'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-1'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('滚')),
                label: Text('滚动列表 - ListView.builder'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-2'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('详')),
                label: Text('详解ListView组件'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-3'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('刷')),
                label: Text('下拉刷新与通知事件'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('滑')),
                label: Text('支持滑动删除 - Dismissible'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-5'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('例')),
                label: Text('GitHub最新动态 - 实例'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-6'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('网')),
                label: Text('二维网格列表 - GridView'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/scrollable/1-7'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('其')),
                label: Text('趁热打铁再来4个widget'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

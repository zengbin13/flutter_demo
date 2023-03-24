import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export './pages/sliver11.dart';
export './pages/sliver12.dart';
export './pages/sliver13.dart';
export './pages/sliver14.dart';
export './pages/sliver15.dart';
export './pages/sliver16.dart';
export './pages/sliver17.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  State<SliverPage> createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPage'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-1'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('Custom')),
                label: Text('走进Slivers的世界 - CustomScrollView'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-2'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('列')),
                label: Text('各式各样的Sliver列表'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-3'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('B')),
                label: Text('美观实用的SliverAppBar'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('组')),
                label: Text('再认识一些Sliver组件'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-5'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('例')),
                label: Text('实例:从ListView转换到SliverList'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-6'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('例')),
                label: Text('实战中SliverPersistentHeader的使用'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/sliver/1-7'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('例')),
                label: Text('设计一个有SliverAppBar的页面'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

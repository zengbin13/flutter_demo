import 'package:flutter/material.dart';

class SliverPage11 extends StatefulWidget {
  const SliverPage11({Key? key}) : super(key: key);

  @override
  State<SliverPage11> createState() => _SliverPage11State();
}

class _SliverPage11State extends State<SliverPage11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('走进Slivers的世界 - CustomScrollView'),
      ),
      // CustomScrollView 的主要功能是提供一个公共的的 Scrollable 和 Viewport，来组合多个 Sliver
      body: CustomScrollView(
        slivers: [
          // 适配器 - 将 RenderBox 适配为 Sliver
          const SliverToBoxAdapter(
            child: FlutterLogo(size: 120),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              // 等同于 ListView(children: [])
              delegate: SliverChildListDelegate(
                const [
                  Text('CustomScrollView - 主要功能是提供一个公共的的Scrollable和Viewport'),
                  Text('SliverToBoxAdapter - 适配器,将RenderBox适配为Sliver'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

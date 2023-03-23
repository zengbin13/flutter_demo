import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollablePage12 extends StatefulWidget {
  const ScrollablePage12({Key? key}) : super(key: key);

  @override
  State<ScrollablePage12> createState() => _ScrollablePage12State();
}

class _ScrollablePage12State extends State<ScrollablePage12> {
  final bool _isEmpty = false;
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('详解ListView组件'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('当前位置 ${_controller.offset}');
          print('底部位置 ${_controller.position.maxScrollExtent}');
          // 跳转
          // _controller.jumpTo(0.0);
          // 动画跳转
          _controller.animateTo(
            -100.0,
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
          );
        },
        child: const Icon(Icons.arrow_downward_sharp),
      ),
      body: _isEmpty
          ? const Center(
              child: Text('无联系人'),
            )
          : CupertinoScrollbar(
              controller: _controller,
              child: ListView.builder(
                // 安卓 ClampingScrollPhysics
                // 苹果 BouncingScrollPhysics
                // 无 NeverScrollableScrollPhysics
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                //滚动方向
                scrollDirection: Axis.vertical,
                // 子项在滚动方向上具有给定的范围
                //主轴方向的紧约束 - 强制确定内容区域 解决内容区域跳转卡顿
                //交叉轴自带紧约束 - viewport
                itemExtent: 56,
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(child: Text('联')),
                    title: Text('联系人'),
                    subtitle: Text('1366668888'),
                  );
                },
              ),
            ),
    );
  }
}

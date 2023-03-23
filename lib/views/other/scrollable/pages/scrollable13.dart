import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollablePage13 extends StatefulWidget {
  const ScrollablePage13({Key? key}) : super(key: key);

  @override
  State<ScrollablePage13> createState() => _ScrollablePage13State();
}

class _ScrollablePage13State extends State<ScrollablePage13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('下拉刷新与通知事件'),
      ),
      body: CupertinoScrollbar(
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(const Duration(seconds: 1));
          },
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          // 事件监听组件 返回ture将会阻止时间向上冒泡
          child: NotificationListener(
            onNotification: (ScrollNotification event) {
              print(event);
              return false;
            },
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: Colors.blue[index % 9 * 100],
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScrollablePage14 extends StatefulWidget {
  const ScrollablePage14({Key? key}) : super(key: key);

  @override
  State<ScrollablePage14> createState() => _ScrollablePage14State();
}

class _ScrollablePage14State extends State<ScrollablePage14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支持滑动删除 - Dismissible'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, index) {
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.greenAccent,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 24),
              child: const Icon(Icons.phone),
            ),
            secondaryBackground: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              child: const Icon(Icons.delete),
            ),
            onDismissed: (direction) {
              print(direction);
            },
            child: ListTile(
              leading: const Icon(Icons.people),
              title: Text('联系人 $index'),
              subtitle: Text('电话号码: $index'),
              trailing: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}

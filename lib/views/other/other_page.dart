import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/discover_cell.dart';
import 'package:go_router/go_router.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('其他功能'),
      ),
      backgroundColor: const Color(0xfff4f3f3),
      body: Center(
          child: Column(
        children: [
          DiscoverCell(
            title: '扫码',
            prefix: Icon(
              Icons.qr_code_scanner,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              context.push('/other/scan');
            },
          ),
          DiscoverCell(
            title: '动画',
            prefix: Icon(
              Icons.animation_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              context.push('/other/animation');
            },
          ),
          DiscoverCell(
            title: '滚动',
            prefix: Icon(
              Icons.list_alt_rounded,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              context.push('/other/scrollable');
            },
          ),
        ],
      )),
    );
  }
}

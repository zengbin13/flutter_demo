import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshPage extends StatefulWidget {
  const RefreshPage({Key? key}) : super(key: key);

  @override
  State<RefreshPage> createState() => _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  late RefreshController _refreshController;
  List<String> _items = [];

  // 下拉刷新执行方法
  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      _items = List.generate(
        10,
        (index) => Random().nextInt(100).toString(),
      ).toList();
    });
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  // 触底加载执行方法
  void _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    //mounted 表示当前 State 是否加载到树⾥ 常用于判断页面是否释放
    if (mounted) {
      setState(() {
        _items.addAll(List.generate(
          10,
          (index) => Random().nextInt(100).toString(),
        ).toList());
      });
    }
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    _refreshController.loadComplete();
  }

  @override
  void initState() {
    _refreshController = RefreshController(
      initialRefresh: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('下拉刷新页面'),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        header: const ClassicHeader(),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus? mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = const Text("上拉加载");
            } else if (mode == LoadStatus.loading) {
              body = const CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = const Text("加载失败！点击重试！");
            } else if (mode == LoadStatus.canLoading) {
              body = const Text("松手,加载更多!");
            } else {
              body = const Text("没有更多数据了!");
            }
            return SizedBox(
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            String item = _items[index];
            return ListTile(
              leading: CircleAvatar(child: Text(item)),
              title: Text(item),
            );
          },
          prototypeItem: const ListTile(),
          itemCount: _items.length,
        ),
      ),
    );
  }
}

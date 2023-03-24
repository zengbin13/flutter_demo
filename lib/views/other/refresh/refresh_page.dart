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

  // 刷新执行方法
  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    _refreshController = RefreshController(
      initialRefresh: true,
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
        onRefresh: _onRefresh,
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

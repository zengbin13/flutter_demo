import 'package:flutter/material.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:flutter_demo/model/produce/produce_pig_list/produce_pig_list_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ArchivesPage extends StatefulWidget {
  const ArchivesPage({Key? key}) : super(key: key);

  @override
  State<ArchivesPage> createState() => _ArchivesPageState();
}

class _ArchivesPageState extends State<ArchivesPage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('母猪档案'),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0xff73b0fe),
        shape: const Border(),
        child: ListView(
          children: [
            Text('xx'),
          ],
        ),
      ),
      body: CustomRefresh<SowListItemModel>(
        controller: _refreshController,
        queryList: (int pageNo, int pageSize) async {
          return await ProduceApi.getProducePigList(data: {
            "cur_page": pageNo,
          });
        },
        itemBuilder: (context, item) {
          return Text(item.earId);
        },
      ),
    );
  }
}

class CustomRefresh<T> extends StatefulWidget {
  const CustomRefresh({
    super.key,
    required this.controller,
    required this.queryList,
    required this.itemBuilder,
  });

  final RefreshController controller;
  final Future<dynamic> Function(int pageNo, int pageSize) queryList;
  final Widget? Function(BuildContext context, T item) itemBuilder;

  @override
  State<CustomRefresh<T>> createState() => _CustomRefreshState<T>();
}

class _CustomRefreshState<T> extends State<CustomRefresh<T>> {
  List<T> items = [];
  int pageNo = 1;
  int pageSize = 7;

  void _onRefresh() async {
    try {
      final data = await widget.queryList(pageNo, pageSize);
      items.addAll(data.list as List<T>);
      if (mounted) setState(() {});
      widget.controller.refreshCompleted();
    } catch (e) {
      widget.controller.refreshFailed();
    }
  }

  void _onLoading() async {
    pageNo += 1;
    try {
      final data = await widget.queryList(pageNo, pageSize);
      items.addAll(data.list as List<T>);
      if (mounted) setState(() {});
      data.list.length >= (data.total as int)
          ? widget.controller.loadNoData()
          : widget.controller.loadComplete();
    } catch (e) {
      widget.controller.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      controller: widget.controller,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
        itemBuilder: (context, i) {
          final T item = items[i];
          return widget.itemBuilder(context, item);
        },
        itemCount: items.length,
      ),
    );
  }
}

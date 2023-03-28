import 'package:flutter/material.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ProducePage extends StatefulWidget {
  const ProducePage({Key? key}) : super(key: key);

  @override
  State<ProducePage> createState() => _ProducePageState();
}

class _ProducePageState extends State<ProducePage> {
  ProduceIndexData? produceData;

  _loadData() async {
    produceData = await ProduceApi.getIndexData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('/produce'),
      onVisibilityChanged: (VisibilityInfo info) {},
      child: Scaffold(
        appBar: AppBar(
          title: const Text('生产管理'),
        ),
        body: produceData == null
            ? const Center(child: Text('请求失败'))
            : const Center(child: Text('ProducePage')),
      ),
    );
  }
}

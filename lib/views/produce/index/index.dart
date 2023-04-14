import 'package:flutter/material.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data_model.dart';
import 'package:flutter_demo/widgets/z_card.dart';
import 'package:go_router/go_router.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'widgets/produce_board.dart';
import 'widgets/produce_livestock.dart';
import 'widgets/produce_wait.dart';

class ProducePage extends StatefulWidget {
  const ProducePage({Key? key}) : super(key: key);

  @override
  State<ProducePage> createState() => _ProducePageState();
}

class _ProducePageState extends State<ProducePage> {
  ProduceIndexDataModel? produceData;

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
        body: ListView(
          children: [
            Column(
              children: [
                ProduceLivestock(
                  produceData: produceData,
                ),
                const ProduceBoard(),
                ZCard(
                  title: '数据中心',
                  content: GridView.count(
                    crossAxisCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    childAspectRatio: 16 / 12,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.push('/produce/archives');
                        },
                        icon: const Icon(Icons.center_focus_strong),
                      )
                    ],
                  ),
                ),
                ProduceWait(
                  produceData: produceData,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

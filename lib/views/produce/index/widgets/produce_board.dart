import 'package:flutter/material.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:flutter_demo/model/produce/produce_board/produce_board.dart';
import 'package:flutter_demo/utils/date_time.dart';
import 'package:flutter_demo/widgets/z_card.dart';

class ProduceBoard extends StatefulWidget {
  const ProduceBoard({super.key});

  @override
  State<ProduceBoard> createState() => _ProduceBoardState();
}

class _ProduceBoardState extends State<ProduceBoard> {
  ProduceList? _produceList;

  // 加载生产看板数据
  _loadData() async {
    Map<String, String> data = {
      "start_time": "",
      "end_time": "",
    };
    if (_currentIndex == 1) {
      List<String> range = DateTimeUtil.getWeekRangeStringToToday();
      data["start_time"] = range[0];
      data["end_time"] = range[1];
    }
    if (_currentIndex == 2) {
      List<String> range = DateTimeUtil.getMonthRangeStringToToday();
      data["start_time"] = range[0];
      data["end_time"] = range[1];
    }
    ProduceBoardModel res = await ProduceApi.getProduceBoard(data: data);
    setState(() {
      _produceList = res.produceList;
    });
  }

  int _currentIndex = 0;
  final List _timeList = ['今天', '本周', '本月', '自定义'];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ZCard(
      title: '生产看板',
      action: Container(
        height: 35,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xffe5e5e5),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: _timeList.map((text) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = _timeList.indexOf(text);
                  _loadData();
                });
              },
              child: Container(
                height: 32,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: _timeList.indexOf(text) == _currentIndex
                    ? BoxDecoration(
                        color: const Color(0xfff3f7fa),
                        borderRadius: BorderRadius.circular(32),
                      )
                    : null,
                child: Text(
                  text,
                  style: _timeList.indexOf(text) == _currentIndex
                      ? TextStyle(color: Theme.of(context).primaryColor)
                      : null,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      content: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 16 / 12,
        children: [
          createBoardItem(
            name: '配种数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '空怀数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '返情数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '流产数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '分娩窝数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '分娩仔猪',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '断奶窝数',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '断奶仔猪',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '经产死亡',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '后备死亡',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '经产淘汰',
            item: _produceList?.breedNum,
          ),
          const SizedBox(),
          createBoardItem(
            name: '哺乳死亡',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '保育死亡',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '育成死亡',
            item: _produceList?.breedNum,
          ),
          const SizedBox(),
          createBoardItem(
            name: '销售',
            item: _produceList?.breedNum,
          ),
          createBoardItem(
            name: '自用',
            item: _produceList?.breedNum,
          ),
        ],
      ),
    );
  }

  Column createBoardItem({
    required String name,
    required BoardList? item,
  }) {
    return Column(
      children: [
        const SizedBox(height: 2),
        Text(
          name,
          style: const TextStyle(
            color: Color(0xffaeaeae),
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          '${item == null ? '-' : item.totalNum}',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

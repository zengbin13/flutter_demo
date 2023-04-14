import 'package:flutter/material.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data_model.dart';
import 'package:flutter_demo/widgets/z_card.dart';

class ProduceLivestock extends StatelessWidget {
  const ProduceLivestock({
    super.key,
    required this.produceData,
  });

  final ProduceIndexDataModel? produceData;

  @override
  Widget build(BuildContext context) {
    return ZCard(
      title: '存栏数量',
      content: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 16 / 10,
        children: <Widget>[
          createStockWidget(
            name: '经产母猪',
            color: const Color(0xff74c4f2),
            num: produceData == null ? 0 : produceData!.produceSowNum.num,
            context: context,
          ),
          createStockWidget(
            name: '后备猪',
            color: const Color(0xfff27474),
            num: produceData == null ? 0 : produceData!.backSowNum.num,
            context: context,
          ),
          createStockWidget(
            name: '哺乳母猪',
            color: const Color(0xff81f274),
            num: produceData == null ? 0 : produceData!.bornNum.num,
            context: context,
          ),
          createStockWidget(
            name: '哺乳仔猪',
            color: const Color(0xff7bf3db),
            num: produceData == null ? 0 : produceData!.bornNum.num,
            context: context,
          ),
          createStockWidget(
            name: '保育猪',
            color: const Color(0xffde74f2),
            num: produceData == null ? 0 : produceData!.feedNum.num,
            context: context,
          ),
          createStockWidget(
            name: '育成猪',
            color: const Color(0xff748df2),
            num: produceData == null ? 0 : produceData!.adultNum.num,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget createStockWidget({
    required String name,
    required Color color,
    required int num,
    required BuildContext context,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Text(name),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          '$num',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

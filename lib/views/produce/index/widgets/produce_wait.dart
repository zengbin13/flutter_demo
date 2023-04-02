import 'package:flutter/material.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data.dart';
import 'package:flutter_demo/widgets/z_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProduceWait extends StatelessWidget {
  const ProduceWait({
    super.key,
    required this.produceData,
  });

  final ProduceIndexData produceData;

  @override
  Widget build(BuildContext context) {
    return ZCard(
      title: '生产待办',
      content: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 16 / 10,
        mainAxisSpacing: 10.w,
        crossAxisSpacing: 10.w,
        children: <Widget>[
          createWaitWidget(
            name: '待配种',
            color: const Color(0xff346cc2),
            bgColor: const Color(0xffecf3fe),
            num: produceData.waitBreedNum,
          ),
          createWaitWidget(
            name: '待分娩',
            color: const Color(0xff2dc684),
            bgColor: const Color(0xffeffef8),
            num: produceData.waitBornNum,
          ),
          createWaitWidget(
            name: '待断奶',
            color: const Color(0xff5ecece),
            bgColor: const Color(0xffecfefc),
            num: produceData.waitWeaningNum,
          ),
          createWaitWidget(
            name: '待查情',
            color: const Color(0xffd74c34),
            bgColor: const Color(0xfffdf2ef),
            num: produceData.waitCheckEmotionNum,
          ),
          createWaitWidget(
            name: '待免疫',
            color: const Color(0xffef8828),
            bgColor: const Color(0xfffef6ed),
            num: produceData.waitImmuneNum,
          ),
          createWaitWidget(
            name: '待审批',
            color: const Color(0xffef8828),
            bgColor: const Color(0xfffef6ed),
            num: produceData.waitApproveNum,
          ),
          createWaitWidget(
            name: '待审批',
            color: const Color(0xffef8828),
            bgColor: const Color(0xfffef6ed),
            num: produceData.waitWashArea,
          ),
        ],
      ),
    );
  }

  Widget createWaitWidget({
    required String name,
    required Color color,
    required Color bgColor,
    required int num,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.w),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$num',
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Transform.translate(
                offset: const Offset(-3, 0),
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: color,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

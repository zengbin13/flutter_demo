import 'package:flutter_demo/http/http_request.dart';
import 'package:flutter_demo/http/model/index.dart';
import 'package:flutter_demo/model/produce/produce_board/produce_board_model.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data_model.dart';
import 'package:flutter_demo/model/produce/produce_pig_list/produce_pig_list_model.dart';

class ProduceApi {
  // 获取首页生产数据
  static Future<ProduceIndexDataModel> getIndexData() async {
    final res = await HttpUtils().post(
      '/produce/index',
    );
    return ProduceIndexDataModel.fromJson(res.data);
  }

  // 获取首页生产看板数据
  static Future<ProduceBoardModel> getProduceBoard({
    Map<String, dynamic>? data,
  }) async {
    final res = await HttpUtils().post(
      '/produce/produceStatics',
      data: data,
      extra: ExtraOptions(
        loading: false,
      ),
    );
    return ProduceBoardModel.fromJson(res.data);
  }

  // 获取生产母猪数据
  static Future<ProducePigListModel> getProducePigList({
    Map<String, dynamic>? data,
  }) async {
    final res = await HttpUtils().post(
      '/produce/pigList',
      data: data,
      extra: ExtraOptions(
        loading: true,
      ),
    );
    return ProducePigListModel.fromJson(res.data);
  }
}

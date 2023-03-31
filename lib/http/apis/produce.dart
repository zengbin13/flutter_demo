import 'package:flutter_demo/http/http_request.dart';
import 'package:flutter_demo/http/model/index.dart';
import 'package:flutter_demo/model/produce/produce_board/produce_board.dart';
import 'package:flutter_demo/model/produce/produce_index_data/produce_index_data.dart';

class ProduceApi {
  static Future<ProduceIndexData> getIndexData() async {
    final res = await HttpUtils().post(
      '/produce/index',
    );
    return ProduceIndexData.fromJson(res.data);
  }

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
}

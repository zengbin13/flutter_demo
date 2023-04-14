import 'package:flutter_demo/http/http_request.dart';
import 'package:flutter_demo/model/common/user_info_model/user_info_model.dart';
import 'package:flutter_demo/model/produce/produce_option/produce_option_model.dart';
import '../model/index.dart';

class LoginApi {
  static login(data) async {
    return await HttpUtils().post(
      '/produce/login',
      data: data,
      extra: ExtraOptions(
        loading: false,
      ),
    );
  }

  static Future<UserInfoModel> getUserInfo() async {
    final res = await HttpUtils().post(
      '/produce/getBaseData',
      extra: ExtraOptions(
        loading: true,
      ),
    );
    return UserInfoModel.fromJson(res.data);
  }

  static Future<ProduceOptionModel> getProduceOptionList() async {
    final res = await HttpUtils().post(
      '/produce/getOptionList',
      extra: ExtraOptions(
        loading: true,
      ),
    );
    return ProduceOptionModel.fromJson(res.data);
  }
}

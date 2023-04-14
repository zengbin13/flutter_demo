// 1.创建模型
// 2.使用MultiProvider
// 3.使用共享数据

import 'package:flutter/material.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:flutter_demo/model/common/user_info_model/user_info_model.dart';
import 'package:flutter_demo/model/produce/produce_option/produce_option_model.dart';
import 'package:sp_util/sp_util.dart';

//ChangeNotifier 用于向监听器发送通知 可订阅其状态变化
class UserModel extends ChangeNotifier {
  final String token = '';
  final UserInfoModel? userInfo = null;

  Future<bool> login({
    required String phone,
    required String password,
  }) async {
    try {
      final res = await LoginApi.login({
        "phone": phone,
        "password": password,
      });
      if (res == null) return false;
      updateToken(res.data['token']);
      await updateUserInfo();
      await storageProduceOption();
      return true;
    } catch (e) {
      return false;
    }
  }

  void updateToken(String token) {
    SpUtil.putString('token', token);
    notifyListeners();
  }

  Future<void> updateUserInfo() async {
    UserInfoModel userInfo = await LoginApi.getUserInfo();
    SpUtil.putObject('userInfo', userInfo);
    notifyListeners();
  }

  Future<void> storageProduceOption() async {
    ProduceOptionModel option = await LoginApi.getProduceOptionList();
    SpUtil.putObject('areaList', option.areaList);
    SpUtil.putObject('factoryList', option.factoryList);
    SpUtil.putObject('produceOption', option);
  }
}

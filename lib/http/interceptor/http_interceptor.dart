import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/http/model/index.dart';
import 'package:flutter_demo/utils/toast.dart';
import '../http_exception.dart';

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    ApiResponse apiResponse = response.data as ApiResponse;
    if (apiResponse.errorCode == ApiCode.notLogin) {
      print('登录页面');
    }
    if (apiResponse.errorCode == ApiCode.lowVersion) {
      print('升级版本');
    }
    if (apiResponse.errorCode == ApiCode.error) {
      print('展示toast');
      ToastUtil.error(apiResponse.msg);
    }
    if (apiResponse.errorCode == ApiCode.success) {
      print('请求成功');
    }
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    // 覆盖异常为自定义的异常类
    HttpException httpException = HttpException.create(err);
    ToastUtil.error('代码 ${httpException.code}', description: httpException.msg);
    return super.onError(err, handler);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra["loading"]) {
      EasyLoading.show(status: '加载中...');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.extra["loading"]) EasyLoading.dismiss();
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.requestOptions.extra["loading"]) EasyLoading.dismiss();
    return super.onError(err, handler);
  }
}

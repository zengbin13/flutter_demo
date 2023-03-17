import 'package:dio/dio.dart';
import 'package:flutter_demo/http/interceptor/loading_interceptor.dart';
import 'package:flutter_demo/http/model/index.dart';
import 'interceptor/crypto_interceptor.dart';
import 'http_config.dart';
import 'interceptor/http_interceptor.dart';

class ExtraOptions {
  ExtraOptions({
    this.loading = true,
  });
  final bool loading;

  Map<String, dynamic> toJson() => {
        "loading": loading,
      };
}

class HttpUtils {
  // factory工厂构造函数  并不总是创建这个类的一个新实例, 可从缓存中返回一个实例
  factory HttpUtils() => _instance;
  static final HttpUtils _instance = HttpUtils._internal();
  // dio实例
  static late Dio _dio;
  Dio get dio => _dio;

  // 实例化dio
  HttpUtils._internal() {
    // BaseOptions、Options、RequestOptions 都可配置参数，且优先级别依次递增
    BaseOptions options = BaseOptions(
      baseUrl: HttpConfig.baseUrl,
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    );
    _dio = Dio(options);
    // 添加拦截器
    _dio.interceptors.add(LoadingInterceptor());
    _dio.interceptors.add(CryptoInterceptor());
    _dio.interceptors.add(HttpInterceptor());
  }

  ///  post 操作
  Future<ApiResponse?> post(
    String path, {
    Map<String, dynamic>? data,
    Options? options,
    ExtraOptions? extra,
  }) async {
    extra ??= ExtraOptions();
    options ??= Options();
    options.extra = extra.toJson();
    try {
      Response response = await _dio.post(
        path,
        data: data,
        options: options,
      );
      return response.data;
    } on DioError catch (e) {
      print('异常捕获: $e');
      rethrow;
    }
  }
}

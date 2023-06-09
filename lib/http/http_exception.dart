import 'package:dio/dio.dart';

class HttpException implements Exception {
  final int code;
  final String msg;

  HttpException({this.code = 500, this.msg = '未知异常，请联系管理员'});

  @override
  String toString() {
    return "HttpError [$code]: $msg";
  }

  factory HttpException.create(DioError error) {
    // dio 异常
    switch (error.type) {
      case DioErrorType.cancel:
        return HttpException(code: -1, msg: '请求取消');
      case DioErrorType.connectionTimeout:
        return HttpException(code: -1, msg: '连接超时');
      case DioErrorType.sendTimeout:
        return HttpException(code: -1, msg: '请求超时');
      case DioErrorType.receiveTimeout:
        return HttpException(code: -1, msg: '响应超时');
      case DioErrorType.badResponse:
        // 服务异常
        int statusCode = error.response!.statusCode as int;
        switch (statusCode) {
          case 400:
            return HttpException(code: statusCode, msg: '请求语法错误');
          case 401:
            return HttpException(code: statusCode, msg: '没有权限');
          case 403:
            return HttpException(code: statusCode, msg: '服务器拒绝执行');
          case 404:
            return HttpException(code: statusCode, msg: '无法连接服务器');
          case 500:
            return HttpException(code: statusCode, msg: '服务器内部错误');
          case 502:
            return HttpException(code: statusCode, msg: '无效的请求');
          case 503:
            return HttpException(code: statusCode, msg: '服务器挂了');
          case 505:
            return HttpException(code: statusCode, msg: '不支持HTTP协议请求');
          default:
            return HttpException(
              code: statusCode,
              msg: error.response!.statusMessage as String,
            );
        }
      default:
        return HttpException(code: 500, msg: error.message ?? '未知异常');
    }
  }
}

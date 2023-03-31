import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_demo/http/model/http.dart';
import '../model/index.dart';

class CryptoInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 加密数据
    log('请求参数 ${options.data}');
    options.data = {'params': AesUtil().encrypt(jsonEncode(options.data))};
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 解密数据
    ApiResponse apiResponse = ApiResponse.fromRawJson(response.data);
    apiResponse.data = jsonDecode(AesUtil().decrypt(apiResponse.data));
    response.data = apiResponse;
    super.onResponse(response, handler);
  }
}

class AesUtil {
  static final Key _key = Key.fromUtf8('1463587320654321');
  static final IV _iv = IV.fromUtf8('1758326540123456');

  static late Encrypter _encrypter;

  factory AesUtil() => _instance;
  static final AesUtil _instance = AesUtil._internal();
  AesUtil._internal() {
    _encrypter = Encrypter(AES(_key, mode: AESMode.cbc));
  }

  String encrypt(plainText) {
    final encrypted = _encrypter.encrypt(plainText, iv: _iv);
    return encrypted.base64;
  }

  String decrypt(String plainText) {
    final decrypted = _encrypter.decrypt(Encrypted.from64(plainText), iv: _iv);
    return decrypted;
  }
}

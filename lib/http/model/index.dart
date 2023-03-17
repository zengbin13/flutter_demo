import 'dart:convert';

class ApiResponse<T> {
  ApiResponse({
    required this.data,
    required this.msg,
    required this.errorCode,
  });

  T data;
  final String msg;
  final int errorCode;

  factory ApiResponse.fromRawJson(String str) =>
      ApiResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        data: json["data"],
        msg: json["msg"],
        errorCode: json["error_code"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
        "msg": msg,
        "error_code": errorCode,
      };
}

class ApiCode {
  static const int success = 0;
  static const int error = 1;
  static const int notLogin = 2;
  static const int lowVersion = 3;
}

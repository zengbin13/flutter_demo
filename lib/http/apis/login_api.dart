import 'package:flutter_demo/http/http_request.dart';

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
}

import 'dart:convert';

import 'package:candleflutter/services/environment.dart';
import 'package:dio/dio.dart';

class LoginService {
  static Future<Response<dynamic>> login(dynamic model) {
    String url = Environment.apiUrl + 'Login/Login';
    var dio = Dio();
    var jsonModel = jsonEncode(model);
    return dio.post(url, data: jsonModel);
  }
}

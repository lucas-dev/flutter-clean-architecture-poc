import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Interceptor)
class JsonResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.data = json.decode(response.data);
    super.onResponse(response, handler);
  }
}
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../response/countries_response_converter.dart';

@LazySingleton(as: Interceptor)
class CountriesInterceptor extends InterceptorsWrapper {
  final CountriesResponseConverter converter;

  CountriesInterceptor({required this.converter});

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final parsedJson = converter.convert(response.data);
    response.data = parsedJson;
    handler.next(response);
  }
}
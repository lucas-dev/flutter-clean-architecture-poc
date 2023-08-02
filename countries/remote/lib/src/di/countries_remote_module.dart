import 'package:common_remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CountriesRemoteModule {
  @lazySingleton
  Dio provideDio(Interceptor interceptor) {
    final dio = Dio(BaseOptions(baseUrl: BASE_URL));
    dio.interceptors.add(interceptor);
    return dio;
  }
}

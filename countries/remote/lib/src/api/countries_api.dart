import 'package:common_remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import '../model/countries_response.dart';
part 'countries_api.g.dart';

@lazySingleton
@RestApi(baseUrl: BASE_URL)
abstract class CountriesApi {

  @factoryMethod
  factory CountriesApi(Dio dio) = _CountriesApi;

  @GET('/no_cache/filter/institutionen.html')
  @DioResponseType(ResponseType.plain)
  Future<CountriesResponse> fetchCountries();
}
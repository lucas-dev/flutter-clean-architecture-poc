import 'package:common_remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../model/universities_response.dart';

part 'universities_api.g.dart';

@lazySingleton
@RestApi(baseUrl: BASE_URL)
abstract class UniversitiesApi {
  static const int DISPLAY_START = 0;
  static const int MAX_DISPLAY_LENGTH = 10000;

  @factoryMethod
  factory UniversitiesApi(Dio dio) = _UniversitiesApi;

  @GET("/index.php?eID=user_anabin_institutionen&conf=institutionsergebnisliste&iDisplayStart=$DISPLAY_START&iDisplayLength=$MAX_DISPLAY_LENGTH")
  Future<UniversitiesResponse> fetchUniversities(/*@Query("sSearch_6") String countryId,*/ @Query("land") String countryName);
}
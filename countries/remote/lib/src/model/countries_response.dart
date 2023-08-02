import 'package:freezed_annotation/freezed_annotation.dart';

import 'country_response.dart';

part 'countries_response.g.dart';

part 'countries_response.freezed.dart';

@freezed
class CountriesResponse with _$CountriesResponse {
  const factory CountriesResponse({required List<CountryResponse>? countries}) =
      _CountriesResponse;

  factory CountriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CountriesResponseFromJson(json);
}

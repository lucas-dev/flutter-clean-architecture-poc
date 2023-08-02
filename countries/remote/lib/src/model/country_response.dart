import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_response.g.dart';

part 'country_response.freezed.dart';

@freezed
class CountryResponse with _$CountryResponse {
  const factory CountryResponse({
    required String id,
    required String name
  }) = _CountryResponse;

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);
}

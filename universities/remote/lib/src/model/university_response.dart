import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_response.g.dart';
part 'university_response.freezed.dart';

@freezed
class UniversityResponse with _$UniversityResponse {
  const factory UniversityResponse(
      {required String id,
      required String name,
      required String city,
      required String country,
      required String description,
      required String status}) = _UniversityResponse;

  factory UniversityResponse.fromJson(Map<String, dynamic> json) =>
      _$UniversityResponseFromJson(json);
}

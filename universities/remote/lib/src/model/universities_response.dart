import 'package:freezed_annotation/freezed_annotation.dart';

part 'universities_response.g.dart';
part 'universities_response.freezed.dart';

@freezed
class UniversitiesResponse with _$UniversitiesResponse {


  const factory UniversitiesResponse(
      {required List<List<String?>> aaData,
      required int iTotalDisplayRecords,
      required int iTotalRecords,
      required int sEcho}) = _UniversitiesResponse;

  factory UniversitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesResponseFromJson(json);
}

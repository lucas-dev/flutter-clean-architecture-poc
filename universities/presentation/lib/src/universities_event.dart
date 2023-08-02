import 'package:freezed_annotation/freezed_annotation.dart';

part 'universities_event.freezed.dart';

@freezed
class UniversitiesEvent with _$UniversitiesEvent {
  const factory UniversitiesEvent.request(
      String countryId, String countryName) = RequestUniversities;
}

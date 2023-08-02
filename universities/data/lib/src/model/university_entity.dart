import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_entity.freezed.dart';

@freezed
class UniversityEntity with _$UniversityEntity {
  const factory UniversityEntity(
      {required String id,
      required String name,
      required String city,
      required String country,
      required String description,
      required String status}) = _UniversityEntity;
}

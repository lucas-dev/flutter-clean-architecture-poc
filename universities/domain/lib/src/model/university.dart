import 'package:freezed_annotation/freezed_annotation.dart';
part 'university.freezed.dart';

@freezed
class University with _$University {
  const factory University(
      {required String id,
        required String name,
        required String city,
        required String country,
        required String description,
        required String status}) = _University;
}
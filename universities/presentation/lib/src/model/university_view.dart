import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_view.freezed.dart';
@freezed
class UniversityView with _$UniversityView {
  const factory UniversityView(
      {required String id,
        required String name,
        required String city,
        required String country,
        required String description,
        required String status}) = _UniversityView;
}
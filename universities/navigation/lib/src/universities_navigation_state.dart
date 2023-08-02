import 'package:freezed_annotation/freezed_annotation.dart';
part 'universities_navigation_state.freezed.dart';

@freezed
class UniversitiesNavigationState with _$UniversitiesNavigationState {
  const factory UniversitiesNavigationState.universityDetailsScreen(
      String universityId) = _UniversityDetailsScreen;
}

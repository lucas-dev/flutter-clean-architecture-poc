import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_navigation_state.freezed.dart';

@freezed
class CountriesNavigationState with _$CountriesNavigationState { 
  const factory CountriesNavigationState.universitiesScreen(String countryId, String countryName) = _UniversitiesScreen;
}

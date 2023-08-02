import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.freezed.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.toCountries() = ToCountries;
  const factory NavigationEvent.toUniversities(String countryId, String countryName) =
      ToUniversities;
}

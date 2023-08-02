import 'package:freezed_annotation/freezed_annotation.dart';
part 'countries_event.freezed.dart';

@freezed
class CountriesEvent with _$CountriesEvent {
  const factory CountriesEvent.request() = RequestCountries;
  const factory CountriesEvent.refresh() = RefreshCountries;
  const factory CountriesEvent.filter(String query) = FilterCountries;
}
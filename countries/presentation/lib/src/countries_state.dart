import 'package:common_presentation/presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_state.freezed.dart';

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState({
      @Default(ViewStatus.idle()) ViewStatus viewStatus}) = _CountriesState;
}

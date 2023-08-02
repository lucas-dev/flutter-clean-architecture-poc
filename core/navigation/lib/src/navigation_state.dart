import 'package:countries_navigation/navigation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required bool splash,
    @Default(false) bool countries,
    @Default(null) CountriesNavigationState? universities
}) = _NavigationState;
}

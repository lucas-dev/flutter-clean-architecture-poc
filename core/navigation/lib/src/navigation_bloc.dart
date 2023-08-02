import 'package:countries_navigation/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'navigation_event.dart';
import 'navigation_state.dart';


@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(splash: true)) {
    on<NavigationEvent>((event, emit) {
      event.when(toCountries: () {
        emit(const NavigationState(splash: false, countries: true));
      }, toUniversities: (String countryId, String countryName) {
        emit(state.copyWith(
            universities:
                CountriesNavigationState.universitiesScreen(countryId, countryName)));
      });
    });
  }
}

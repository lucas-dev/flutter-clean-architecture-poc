import 'package:countries_navigation/navigation.dart';
import 'package:injectable/injectable.dart';

import 'navigation_bloc.dart';
import 'navigation_event.dart';

@Injectable(as: CountriesNavigation)
class CountriesNavigationImpl implements CountriesNavigation {
  final NavigationBloc navigator;

  CountriesNavigationImpl({required this.navigator});

  @override
  toUniversities(String countryId, String countryName) {
    navigator.add(NavigationEvent.toUniversities(countryId, countryName));
  }
}

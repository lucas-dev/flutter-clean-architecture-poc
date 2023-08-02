import 'package:bloc/bloc.dart';
import 'package:common_di/di.dart';

abstract class CountriesInjector {
  void navigateToUniversities(String countryId, String countryName);

  void resetFilter();

  void refresh();

  Bloc filter(String query);

  Bloc request();
}

CountriesInjector countriesInjector() {
  return serviceLocator<CountriesInjector>();
}

import 'package:common_di/di.dart';
import 'package:countries_di/di.dart';
import 'package:countries_navigation/navigation.dart';
import 'package:countries_presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: CountriesInjector)
class CountriesInjectorImpl implements CountriesInjector {
  @override
  void navigateToUniversities(String countryId, String countryName) {
    serviceLocator<CountriesNavigation>()
        .toUniversities(countryId, countryName);
  }

  @override
  void resetFilter() {
    serviceLocator<CountriesBloc>().add(const FilterCountries(""));
  }

  @override
  void refresh() {
    serviceLocator<CountriesBloc>().add(const RefreshCountries());
  }

  @override
  Bloc filter(String query) {
    return serviceLocator<CountriesBloc>()..add(FilterCountries(query));
  }

  @override
  Bloc request() {
    return serviceLocator<CountriesBloc>()..add(const RequestCountries());
  }
}

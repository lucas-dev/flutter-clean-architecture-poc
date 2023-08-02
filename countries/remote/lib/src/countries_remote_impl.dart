import 'package:countries_data/data.dart';
import 'package:injectable/injectable.dart';

import 'api/countries_api.dart';
import 'mapper/country_response_mapper.dart';

@LazySingleton(as: CountriesRemote)
class CountriesRemoteImpl implements CountriesRemote {
  final CountriesApi api;
  final CountryResponseMapper mapper;

  CountriesRemoteImpl({required this.api, required this.mapper});

  @override
  Future<List<CountryEntity>> fetch() async {
    final response = await api.fetchCountries();
    return response.countries
            ?.map((country) => mapper.mapFromRemote(country))
            .toList() ??
        List.empty();
  }
}

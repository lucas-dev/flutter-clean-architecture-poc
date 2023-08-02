import '../model/country_entity.dart';

abstract class CountriesRemote {
  Future<List<CountryEntity>> fetch();
}

import '../model/country_entity.dart';

abstract class CountriesCache {
  Stream<List<CountryEntity>> getAll();
  Stream<List<CountryEntity>> filter(String query);
  Future<void> save(List<CountryEntity> countries);
  Future<void> clear();
  Future<bool> areCountriesCached();
  Future<bool> isCacheExpired();
  Future<void> updateCacheExpiration();
}
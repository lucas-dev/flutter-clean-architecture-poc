
import 'package:countries_data/data.dart';
import 'package:injectable/injectable.dart';

import 'dao/countries_config_dao.dart';
import 'dao/countries_dao.dart';
import 'mapper/country_cache_mapper.dart';
import 'model/countries_config.dart';


@LazySingleton(as:CountriesCache)
class CountriesCacheImpl implements CountriesCache {
  final CountriesDao countriesDao;
  final CountriesConfigDao configDao;
  final CountryCacheMapper mapper;

  CountriesCacheImpl(
      {required this.countriesDao,
      required this.configDao,
      required this.mapper});

  @override
  Stream<List<CountryEntity>> getAll() async* {
    yield* await countriesDao.getAll().map((countries) {
      return countries!.map((country) {
        return mapper.mapFromCache(country);
      }).toList();
    });
  }

  @override
  Stream<List<CountryEntity>> filter(String query) async* {
    yield* countriesDao.filter(query).map((countries) {
      return countries!.map((country) {
        return mapper.mapFromCache(country);
      }).toList();
    });
  }


  @override
  Future<bool> areCountriesCached() async {
    var cachedCountries = await countriesDao.cachedCountriesExist() ?? 0;
    return cachedCountries > 0;
  }

  @override
  Future<void> clear() async {
    countriesDao.clear();
  }

  @override
  Future<bool> isCacheExpired() async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    final config = await configDao.get() ?? CountriesConfig();
    return currentTime - config.lastCacheTime > EXPIRATION_TIME;
  }

  @override
  Future<void> save(List<CountryEntity> countries) async {
    countriesDao.insert(
        countries.map((country) => mapper.mapToCache(country)).toList());
  }

  @override
  Future<void> updateCacheExpiration() async {
    configDao.insert(CountriesConfig(lastCacheTime: DateTime.now().millisecondsSinceEpoch));
  }

  final EXPIRATION_TIME = const Duration(minutes: 1).inMilliseconds;
}

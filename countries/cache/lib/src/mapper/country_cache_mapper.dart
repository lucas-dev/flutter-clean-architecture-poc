import 'package:common_cache/cache.dart';
import 'package:countries_data/data.dart';
import 'package:injectable/injectable.dart';

import '../model/country_cache.dart';

@lazySingleton
class CountryCacheMapper extends CacheMapper<CountryCache, CountryEntity> {
  @override
  CountryEntity mapFromCache(CountryCache cache) {
    return CountryEntity(id: cache.id, name: cache.name);
  }

  @override
  CountryCache mapToCache(CountryEntity data) {
    return CountryCache(id: data.id, name: data.name);
  }
}

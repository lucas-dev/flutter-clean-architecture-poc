
import 'package:countries_cache/cache.dart';
import 'package:countries_data/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CountriesDatabase db;
  late CountryCacheMapper mapper;
  late CountriesCacheImpl cache;
  setUp(() async {
    db = await $FloorCountriesDatabase.inMemoryDatabaseBuilder().build();
    mapper = CountryCacheMapper();
    cache = CountriesCacheImpl(
        countriesDao: db.countriesDao, configDao: db.configDao, mapper: mapper);
  });

  tearDown(() {
    db.close();
  });

  group('getAll:', () {
    setUp(() async {
      cache.save(new List.from([CountryEntity(id: "1", name: "dsd")]));
    });
    test('TestGetAllCountriesReturnsCountriesFromCacheWhenCountriesAreCached', () async {
      var actual = await cache.getAll().first;
      expect(actual.length, 1);
    });

    test('test data mapping', () async {
      var countriesDao = await db.countriesDao.getAll().first;
      expect(countriesDao, isA<List<CountryCache>?>());
      var cached = await cache.getAll().first;
      expect(cached, isA<List<CountryEntity>?>());
    });

    test('test no data is returned when cache is empty', () async {
      cache.clear();
      var actual = await cache.getAll().first;
      expect(actual.length, 0);
    });
  });

  group('filter:', () {
    setUp(() async {
      db.countriesDao.insert(new List.from([CountryCache(id: "1", name: "dsd"), CountryCache(id: "2", name: "midsd"), CountryCache(id: "3", name: "hola")]));
    });
    test('if query matches stored data, verify data is returned', () async {
      var actual = await cache.filter("dsd").first;
      expect(actual.length, 2);
    });

    test('verify data is not found when query doesn\'t match stored data', () async {
      var actual = await cache.filter("holaz").first;
      expect(actual.length, 0);
    });
  });

  group('areCountriesCached:', () {
    setUp(() async {
      db.countriesDao.insert(new List.from([CountryCache(id: "1", name: "dsd")]));
    });
    test('if cached data exists, verify that the length matches the number of entries', () async {
      var actual = await cache.areCountriesCached();
      expect(actual, true);
    });

    test('if the cache is empty, verify that the length is 0', () async {
      db.countriesDao.clear();
      var actual = await cache.areCountriesCached();
      expect(actual, false);
    });
  });


  group('save:', () {
    test('verify that the database contains the new data after the write operation', () async {
      cache.save(new List.from([CountryEntity(id: "1", name: "dsd")]));
      var actual = await cache.getAll().first;
      expect(actual, equals([CountryEntity(id: "1", name: "dsd")]));
    });
  });

  group('expiration policy:', () {
    test('verify that the cache has expired', () async {
      cache.isCacheExpired();
      expect(await cache.isCacheExpired(), true);
    });

    test('verify that the cache has not expired', () async {
      cache.updateCacheExpiration();
      cache.isCacheExpired();
      expect(await cache.isCacheExpired(), false);
    });
  });
}

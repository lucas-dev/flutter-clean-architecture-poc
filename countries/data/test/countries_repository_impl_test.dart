import 'package:common_domain/domain.dart';
import 'package:countries_data/data.dart';
import 'package:countries_domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCountriesRemote extends Mock implements CountriesRemote {}

class MockCountriesCache extends Mock implements CountriesCache {}

void main() {
  late CountriesRemote countriesRemote;
  late CountriesCache countriesCache;
  late CountryEntityMapper mapper;
  late CountriesRepositoryImpl repository;

  setUp(() {
    countriesRemote = MockCountriesRemote();
    countriesCache = MockCountriesCache();
    mapper = CountryEntityMapper();
    repository = CountriesRepositoryImpl(
        remote: countriesRemote, cache: countriesCache, mapper: mapper);
  });

  group('states:', () {
    test('test loading state', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      expect(await repository.retrieveAll(false).first,
          Result<List<Country>>.loading());
    });

    test('test data can be retrieved', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      expect(await repository.retrieveAll(false).elementAt(1),
          Result<List<Country>>.data([Country(id: "1", name: "sd")]));
    });

    test('test error state', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenThrow(Exception('oops'));
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      expect(await repository.retrieveAll(false).elementAt(1),
          Result<List<Country>>.error("Exception: oops"));
    });

    test('test happy path', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      expect(
          repository.retrieveAll(false),
          emitsInOrder([
            Result<List<Country>>.loading(),
            Result<List<Country>>.data([Country(id: "1", name: "sd")])
          ]));
    });

    test('test error flow', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenThrow(Exception('oops'));
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      expect(
          repository.retrieveAll(false),
          emitsInOrder([
            Result<List<Country>>.loading(),
            Result<List<Country>>.error("Exception: oops")
          ]));
    });
  });

  group('cache', () {
    test(
        'verify data is refreshed when force refresh is requested and cache is not expired',
        () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(false));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      await repository.retrieveAll(true).elementAt(1); // ignore loading emition
      verify(() => countriesCache.clear()).called(1);
      verify(() => countriesRemote.fetch()).called(1);
      verify(() => countriesCache.save(any())).called(1);
      verify(() => countriesCache.updateCacheExpiration()).called(1);
    });

    test(
        'verify data is refreshed when forced refresh is not required but cache is expired',
        () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(true));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      await repository
          .retrieveAll(false)
          .elementAt(1); // ignore loading emition
      verify(() => countriesCache.clear()).called(1);
      verify(() => countriesRemote.fetch()).called(1);
      verify(() => countriesCache.save(any())).called(1);
      verify(() => countriesCache.updateCacheExpiration()).called(1);
    });

    test(
        'verify that the cache logic is not triggered when a forced refresh is not needed and the cache has not expired',
        () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(false));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      await repository
          .retrieveAll(false)
          .elementAt(1); // ignore loading emition

      verifyNever(() => countriesCache.clear());
      verifyNever(() => countriesRemote.fetch());
      verifyNever(() => countriesCache.save(any()));
      verifyNever(() => countriesCache.updateCacheExpiration());
    });

    test('test data is retrieved from cache', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(false));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      await repository
          .retrieveAll(false)
          .elementAt(1); // ignore loading emition
      verify(() => countriesCache.getAll()).called(1);
    });

    test('test data is properly mapped', () async {
      when(() => countriesCache.isCacheExpired())
          .thenAnswer((realInvocation) => Future.value(false));
      when(() => countriesCache.clear()).thenAnswer((_) => Future.value());
      when(() => countriesRemote.fetch()).thenAnswer((_) =>
          Future.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      when(() => countriesCache.save(any())).thenAnswer((_) => Future.value());
      when(() => countriesCache.updateCacheExpiration())
          .thenAnswer((_) => Future.value());
      when(() => countriesCache.getAll()).thenAnswer((_) =>
          Stream.value(new List.from([CountryEntity(id: "1", name: "sd")])));
      var actual = await countriesCache.getAll().first;
      expect(actual, isA<List<CountryEntity>>());
      var result = await repository
          .retrieveAll(false)
          .elementAt(1); // ignore loading emition
      expect(result, isA<Result<List<Country>>>());
    });
  });
}

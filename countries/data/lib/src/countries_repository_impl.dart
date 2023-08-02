import 'dart:async';

import 'package:common_domain/domain.dart';
import 'package:countries_data/src/sources/countries_cache.dart';
import 'package:countries_data/src/sources/countries_remote.dart';
import 'package:countries_domain/domain.dart';
import 'package:injectable/injectable.dart';

import 'mapper/country_entity_mapper.dart';

@Injectable(as: CountriesRepository)
class CountriesRepositoryImpl implements CountriesRepository {
  final CountriesRemote remote;
  final CountriesCache cache;
  final CountryEntityMapper mapper;

  CountriesRepositoryImpl(
      {required this.remote, required this.cache, required this.mapper});

  @override
  Stream<Result<List<Country>>> retrieveAll(bool refresh) async* {
    yield const Loading();
    try {
      if (refresh || await cache.isCacheExpired()) {
        cache.clear();
        var countriesRemote = await remote.fetch();
        cache.save(countriesRemote);
        cache.updateCacheExpiration();
      }

      await for (final cached in cache.getAll()) {
        yield Success(
            cached.map((country) => mapper.mapFromData(country)).toList());
      }
    } on Exception catch (error) {
      yield Error(error.toString());
    }
  }

  @override
  Stream<Result<List<Country>>> filter(String query) async* {
    yield const Loading();
    try {
      await for (final cached in cache.filter(query)) {
        yield Success(
            cached.map((country) => mapper.mapFromData(country)).toList());
      }
    } on Exception catch (error) {
      yield Error(error.toString());
    }
  }
}

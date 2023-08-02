//@GeneratedMicroModule;CountriesCachePackageModule;package:countries_cache/cache.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:countries_cache/src/countries_cache_impl.dart' as _i8;
import 'package:countries_cache/src/dao/countries_config_dao.dart' as _i5;
import 'package:countries_cache/src/dao/countries_dao.dart' as _i6;
import 'package:countries_cache/src/db/countries_database.dart' as _i3;
import 'package:countries_cache/src/di/countries_cache_module.dart' as _i9;
import 'package:countries_cache/src/mapper/country_cache_mapper.dart' as _i4;
import 'package:countries_data/data.dart' as _i7;
import 'package:injectable/injectable.dart' as _i1;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CountriesCachePackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final countriesCacheModule = _$CountriesCacheModule();
    await gh.factoryAsync<_i3.CountriesDatabase>(
      () => countriesCacheModule.countriesDatabase(),
      preResolve: true,
    );
    gh.lazySingleton<_i4.CountryCacheMapper>(() => _i4.CountryCacheMapper());
    gh.lazySingleton<_i5.CountriesConfigDao>(() =>
        countriesCacheModule.provideConfigDao(gh<_i3.CountriesDatabase>()));
    gh.lazySingleton<_i6.CountriesDao>(() =>
        countriesCacheModule.provideCountriesDao(gh<_i3.CountriesDatabase>()));
    gh.lazySingleton<_i7.CountriesCache>(() => _i8.CountriesCacheImpl(
          countriesDao: gh<_i6.CountriesDao>(),
          configDao: gh<_i5.CountriesConfigDao>(),
          mapper: gh<_i4.CountryCacheMapper>(),
        ));
  }
}

class _$CountriesCacheModule extends _i9.CountriesCacheModule {}

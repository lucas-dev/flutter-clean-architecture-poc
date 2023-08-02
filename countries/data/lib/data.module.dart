//@GeneratedMicroModule;CountriesDataPackageModule;package:countries_data/data.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:countries_data/src/countries_repository_impl.dart' as _i5;
import 'package:countries_data/src/mapper/country_entity_mapper.dart' as _i3;
import 'package:countries_data/src/sources/countries_cache.dart' as _i7;
import 'package:countries_data/src/sources/countries_remote.dart' as _i6;
import 'package:countries_domain/domain.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CountriesDataPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.CountryEntityMapper>(() => _i3.CountryEntityMapper());
    gh.factory<_i4.CountriesRepository>(() => _i5.CountriesRepositoryImpl(
          remote: gh<_i6.CountriesRemote>(),
          cache: gh<_i7.CountriesCache>(),
          mapper: gh<_i3.CountryEntityMapper>(),
        ));
  }
}

//@GeneratedMicroModule;CountriesDomainPackageModule;package:countries_domain/domain.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:countries_domain/src/interactors/filter_countries_usecase.dart'
    as _i3;
import 'package:countries_domain/src/interactors/get_countries_usecase.dart'
    as _i5;
import 'package:countries_domain/src/repository/countries_repository.dart'
    as _i4;
import 'package:injectable/injectable.dart' as _i1;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CountriesDomainPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.FilterCountriesUseCase>(() =>
        _i3.FilterCountriesUseCase(repository: gh<_i4.CountriesRepository>()));
    gh.lazySingleton<_i5.GetCountriesUseCase>(() =>
        _i5.GetCountriesUseCase(repository: gh<_i4.CountriesRepository>()));
  }
}

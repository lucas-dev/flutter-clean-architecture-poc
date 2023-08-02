//@GeneratedMicroModule;CountriesRemotePackageModule;package:countries_remote/remote.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:countries_data/data.dart' as _i8;
import 'package:countries_remote/src/api/countries_api.dart' as _i7;
import 'package:countries_remote/src/countries_remote_impl.dart' as _i9;
import 'package:countries_remote/src/di/countries_remote_module.dart' as _i10;
import 'package:countries_remote/src/interceptor/countries_interceptor.dart'
    as _i6;
import 'package:countries_remote/src/mapper/country_response_mapper.dart'
    as _i4;
import 'package:countries_remote/src/response/countries_response_converter.dart'
    as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CountriesRemotePackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final countriesRemoteModule = _$CountriesRemoteModule();
    gh.lazySingleton<_i3.CountriesResponseConverter>(
        () => _i3.CountriesResponseConverter());
    gh.lazySingleton<_i4.CountryResponseMapper>(
        () => _i4.CountryResponseMapper());
    gh.lazySingleton<_i5.Interceptor>(() => _i6.CountriesInterceptor(
        converter: gh<_i3.CountriesResponseConverter>()));
    gh.lazySingleton<_i5.Dio>(
        () => countriesRemoteModule.provideDio(gh<_i5.Interceptor>()));
    gh.lazySingleton<_i7.CountriesApi>(() => _i7.CountriesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i8.CountriesRemote>(() => _i9.CountriesRemoteImpl(
          api: gh<_i7.CountriesApi>(),
          mapper: gh<_i4.CountryResponseMapper>(),
        ));
  }
}

class _$CountriesRemoteModule extends _i10.CountriesRemoteModule {}

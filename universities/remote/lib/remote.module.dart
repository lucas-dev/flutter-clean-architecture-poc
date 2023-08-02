//@GeneratedMicroModule;UniversitiesRemotePackageModule;package:universities_remote/remote.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i3;
import 'package:injectable/injectable.dart' as _i1;
import 'package:universities_data/data.dart' as _i7;
import 'package:universities_remote/src/api/universities_api.dart' as _i6;
import 'package:universities_remote/src/di/universities_remote_module.dart'
    as _i9;
import 'package:universities_remote/src/interceptor/json_response_interceptor.dart'
    as _i4;
import 'package:universities_remote/src/mapper/university_response_mapper.dart'
    as _i5;
import 'package:universities_remote/src/universities_remote_impl.dart' as _i8;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class UniversitiesRemotePackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final universitiesRemoteModule = _$UniversitiesRemoteModule();
    gh.lazySingleton<_i3.Interceptor>(() => _i4.JsonResponseInterceptor());
    gh.lazySingleton<_i5.UniversityResponseMapper>(
        () => _i5.UniversityResponseMapper());
    gh.lazySingleton<_i3.Dio>(
        () => universitiesRemoteModule.provideDio(gh<_i3.Interceptor>()));
    gh.lazySingleton<_i6.UniversitiesApi>(
        () => _i6.UniversitiesApi(gh<_i3.Dio>()));
    gh.factory<_i7.UniversitiesRemote>(() => _i8.UniversitieRemoteImpl(
          api: gh<_i6.UniversitiesApi>(),
          mapper: gh<_i5.UniversityResponseMapper>(),
        ));
  }
}

class _$UniversitiesRemoteModule extends _i9.UniversitiesRemoteModule {}

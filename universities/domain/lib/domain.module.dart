//@GeneratedMicroModule;UniversitiesDomainPackageModule;package:universities_domain/domain.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:universities_domain/src/interactors/get_universities_usecase.dart'
    as _i3;
import 'package:universities_domain/src/repository/universities_repository.dart'
    as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class UniversitiesDomainPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.GetUniversitiesUseCase>(() =>
        _i3.GetUniversitiesUseCase(
            repository: gh<_i4.UniversitiesRepository>()));
  }
}

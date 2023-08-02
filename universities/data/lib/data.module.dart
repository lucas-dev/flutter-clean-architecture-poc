//@GeneratedMicroModule;UniversitiesDataPackageModule;package:universities_data/data.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:universities_data/src/mapper/university_entity_mapper.dart'
    as _i3;
import 'package:universities_data/src/sources/universities_remote.dart' as _i6;
import 'package:universities_data/src/universities_repository_impl.dart' as _i5;
import 'package:universities_domain/domain.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class UniversitiesDataPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.UniversityEntityMapper>(
        () => _i3.UniversityEntityMapper());
    gh.factory<_i4.UniversitiesRepository>(() => _i5.UniversitiesRepositoryImpl(
          remote: gh<_i6.UniversitiesRemote>(),
          mapper: gh<_i3.UniversityEntityMapper>(),
        ));
  }
}

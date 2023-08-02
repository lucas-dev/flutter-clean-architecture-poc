//@GeneratedMicroModule;UniversitiesPresentationPackageModule;package:universities_presentation/presentation.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:universities_domain/domain.dart' as _i5;
import 'package:universities_presentation/src/mapper/university_view_mapper.dart'
    as _i3;
import 'package:universities_presentation/src/universities_bloc.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class UniversitiesPresentationPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.UniversityViewMapper>(
        () => _i3.UniversityViewMapper());
    gh.lazySingleton<_i4.UniversitiesBloc>(() => _i4.UniversitiesBloc(
          getUniversitiesUseCase: gh<_i5.GetUniversitiesUseCase>(),
          mapper: gh<_i3.UniversityViewMapper>(),
        ));
  }
}

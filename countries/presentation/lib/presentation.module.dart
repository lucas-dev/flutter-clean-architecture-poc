//@GeneratedMicroModule;CountriesPresentationPackageModule;package:countries_presentation/presentation.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:countries_domain/domain.dart' as _i5;
import 'package:countries_presentation/src/countries_bloc.dart' as _i4;
import 'package:countries_presentation/src/mapper/country_view_mapper.dart'
    as _i3;
import 'package:injectable/injectable.dart' as _i1;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CountriesPresentationPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.CountryViewMapper>(() => _i3.CountryViewMapper());
    gh.lazySingleton<_i4.CountriesBloc>(() => _i4.CountriesBloc(
          getCountriesUseCase: gh<_i5.GetCountriesUseCase>(),
          filterCountriesUseCase: gh<_i5.FilterCountriesUseCase>(),
          mapper: gh<_i3.CountryViewMapper>(),
        ));
  }
}

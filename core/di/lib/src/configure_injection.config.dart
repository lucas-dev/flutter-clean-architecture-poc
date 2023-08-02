// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_di/src/countries_injector_impl.dart' as _i11;
import 'package:core_di/src/splash_injector_impl.dart' as _i13;
import 'package:core_di/src/universities_injector_impl.dart' as _i15;
import 'package:core_navigation/navigation.module.dart' as _i3;
import 'package:countries_cache/cache.module.dart' as _i9;
import 'package:countries_data/data.module.dart' as _i5;
import 'package:countries_di/di.dart' as _i10;
import 'package:countries_domain/domain.module.dart' as _i6;
import 'package:countries_presentation/presentation.module.dart' as _i7;
import 'package:countries_remote/remote.module.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:splash_di/di.dart' as _i12;
import 'package:splash_presentation/presentation.module.dart' as _i4;
import 'package:universities_data/data.module.dart' as _i16;
import 'package:universities_di/di.dart' as _i14;
import 'package:universities_domain/domain.module.dart' as _i17;
import 'package:universities_presentation/presentation.module.dart' as _i18;
import 'package:universities_remote/remote.module.dart' as _i19;
import 'package:universities_ui/ui.module.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.CoreNavigationPackageModule().init(gh);
    await _i4.SplashPresentationPackageModule().init(gh);
    await _i5.CountriesDataPackageModule().init(gh);
    await _i6.CountriesDomainPackageModule().init(gh);
    await _i7.CountriesPresentationPackageModule().init(gh);
    await _i8.CountriesRemotePackageModule().init(gh);
    await _i9.CountriesCachePackageModule().init(gh);
    gh.factory<_i10.CountriesInjector>(() => _i11.CountriesInjectorImpl());
    gh.lazySingleton<_i12.SplashInjector>(() => _i13.SplashInjectorImpl());
    gh.lazySingleton<_i14.UniversitiesInjector>(
        () => _i15.UniversitiesInjectorImpl());
    return this;
  }

// initializes the registration of universities-scope dependencies inside of GetIt
  Future<_i1.GetIt> initUniversitiesScope(
      {_i1.ScopeDisposeFunc? dispose}) async {
    return _i2.GetItHelper(this).initScopeAsync(
      'universities',
      dispose: dispose,
      init: (_i2.GetItHelper gh) async {
        await _i16.UniversitiesDataPackageModule().init(gh);
        await _i17.UniversitiesDomainPackageModule().init(gh);
        await _i18.UniversitiesPresentationPackageModule().init(gh);
        await _i19.UniversitiesRemotePackageModule().init(gh);
        await _i20.UniversitiesUiPackageModule().init(gh);
      },
    );
  }
}

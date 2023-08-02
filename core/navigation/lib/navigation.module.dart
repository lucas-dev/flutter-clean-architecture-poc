//@GeneratedMicroModule;CoreNavigationPackageModule;package:core_navigation/navigation.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core_navigation/src/countries_navigation_impl.dart' as _i7;
import 'package:core_navigation/src/navigation_bloc.dart' as _i3;
import 'package:core_navigation/src/splash_navigation_impl.dart' as _i5;
import 'package:countries_navigation/navigation.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;
import 'package:splash_navigation/navigation.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
class CoreNavigationPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.NavigationBloc>(() => _i3.NavigationBloc());
    gh.lazySingleton<_i4.SplashNavigation>(
        () => _i5.SplashNavigationImpl(navigator: gh<_i3.NavigationBloc>()));
    gh.factory<_i6.CountriesNavigation>(
        () => _i7.CountriesNavigationImpl(navigator: gh<_i3.NavigationBloc>()));
  }
}

import 'package:common_di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:splash_di/di.dart';
import 'package:splash_navigation/navigation.dart';
import 'package:splash_presentation/presentation.dart';

@LazySingleton(as: SplashInjector)
class SplashInjectorImpl implements SplashInjector {
  @override
  Bloc start() {
    return serviceLocator<SplashBloc>()..add(const SplashEvents.start());
  }

  @override
  void navigateToCountries() {
    serviceLocator<SplashNavigation>().toCountries();
  }
}
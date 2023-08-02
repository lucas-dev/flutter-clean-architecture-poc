import 'package:common_di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SplashInjector {
  Bloc start();
  void navigateToCountries();
}

SplashInjector splashInjector() {
  return serviceLocator<SplashInjector>();
}
import 'package:injectable/injectable.dart';
import 'package:splash_navigation/navigation.dart';

import 'navigation_bloc.dart';
import 'navigation_event.dart';

@LazySingleton(as: SplashNavigation)
class SplashNavigationImpl implements SplashNavigation {
  final NavigationBloc navigator;

  SplashNavigationImpl({required this.navigator});

  @override
  toCountries() {
    navigator.add(const NavigationEvent.toCountries());
  }

}
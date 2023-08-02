
import 'package:common_di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const UNIVERSITIES_SCOPE = "universities";

UniversitiesInjector universitiesInjector() {
  return serviceLocator<UniversitiesInjector>();
}

abstract class UniversitiesInjector {
  Future<void> pushUniversitiesDependencies();

  void disposeDependencies();

  Bloc requestUniversities(String countryId, String countryName);
}
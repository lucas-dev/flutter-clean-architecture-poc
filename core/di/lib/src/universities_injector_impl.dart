import 'package:bloc/src/bloc.dart';
import 'package:common_di/di.dart';
import 'package:core_di/src/configure_injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_di/di.dart';
import 'package:universities_presentation/presentation.dart';

@LazySingleton(as: UniversitiesInjector) // this should not be scoped
class UniversitiesInjectorImpl implements UniversitiesInjector {
  @override
  Future<void> pushUniversitiesDependencies() async {
    serviceLocator.pushNewScope(init: (_) => serviceLocator.initUniversitiesScope());
  }

  @override
  void disposeDependencies() {
    serviceLocator.popScope();
  }

  @override
  Bloc requestUniversities(String countryId, String countryName) {
    return serviceLocator<UniversitiesBloc>()..add(RequestUniversities(countryId, countryName));
  }

}
import 'package:common_di/di.dart';
import 'package:core_di/src/configure_injection.config.dart';
import 'package:core_navigation/navigation.module.dart';
import 'package:countries_cache/cache.module.dart';
import 'package:countries_data/data.module.dart';
import 'package:countries_presentation/presentation.module.dart';
import 'package:countries_domain/domain.module.dart';
import 'package:countries_remote/remote.module.dart';
import 'package:injectable/injectable.dart';
import 'package:splash_presentation/presentation.module.dart';
import 'package:universities_data/data.module.dart';
import 'package:universities_di/di.dart';
import 'package:universities_domain/domain.module.dart';
import 'package:universities_presentation/presentation.module.dart';
import 'package:universities_remote/remote.module.dart';
import 'package:universities_ui/ui.module.dart';

@InjectableInit(externalPackageModulesBefore:
[
  ExternalModule(UniversitiesDataPackageModule, scope: UNIVERSITIES_SCOPE),
  ExternalModule(UniversitiesDomainPackageModule, scope: UNIVERSITIES_SCOPE),
  ExternalModule(UniversitiesPresentationPackageModule, scope: UNIVERSITIES_SCOPE),
  ExternalModule(UniversitiesRemotePackageModule, scope: UNIVERSITIES_SCOPE),
  ExternalModule(UniversitiesUiPackageModule, scope: UNIVERSITIES_SCOPE),
  ExternalModule(CoreNavigationPackageModule),
  ExternalModule(SplashPresentationPackageModule),
  ExternalModule(CountriesDataPackageModule),
  ExternalModule(CountriesDomainPackageModule),
  ExternalModule(CountriesPresentationPackageModule),
  ExternalModule(CountriesRemotePackageModule),
  ExternalModule(CountriesCachePackageModule)
  // ExternalModule(UniversitiesNavigationPackageModule, scope: UNIVERSITIES_SCOPE),

])
Future<void> configureInjection() async => serviceLocator.init();
library countries_data;

import 'package:injectable/injectable.dart';

export 'src/mapper/country_entity_mapper.dart';
export 'src/model/country_entity.dart';
export 'src/sources/countries_cache.dart';
export 'src/sources/countries_remote.dart';
export 'src/countries_repository_impl.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
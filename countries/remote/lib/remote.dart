library countries_remote;

import 'package:injectable/injectable.dart';

export 'src/api/countries_api.dart';
export 'src/di/countries_remote_module.dart';
export 'src/interceptor/countries_interceptor.dart';
export 'src/mapper/country_response_mapper.dart';
export 'src/model/countries_response.dart';
export 'src/model/country_response.dart';
export 'src/response/countries_response_converter.dart';
export 'src/countries_remote_impl.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
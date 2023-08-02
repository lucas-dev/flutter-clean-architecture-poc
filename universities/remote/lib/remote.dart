library universities_remote;

import 'package:injectable/injectable.dart';

export 'src/api/universities_api.dart';
export 'src/converter/universities_converter.dart';
export 'src/di/universities_remote_module.dart';
export 'src/interceptor/json_response_interceptor.dart';
export 'src/mapper/university_response_mapper.dart';
export 'src/model/universities_response.dart';
export 'src/model/university_response.dart';
export 'src/universities_remote_impl.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
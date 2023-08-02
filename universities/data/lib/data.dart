library universities_data;

import 'package:injectable/injectable.dart';

export 'src/mapper/university_entity_mapper.dart';
export 'src/model/university_entity.dart';
export 'src/sources/universities_remote.dart';
export 'src/universities_repository_impl.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
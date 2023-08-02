library universities_domain;

import 'package:injectable/injectable.dart';

export 'src/interactors/get_universities_usecase.dart';
export 'src/model/university.dart';
export 'src/repository/universities_repository.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
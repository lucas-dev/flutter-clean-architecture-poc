library universities_presentation;

import 'package:injectable/injectable.dart';

export 'src/mapper/university_view_mapper.dart';
export 'src/model/university_view.dart';
export 'src/universities_bloc.dart';
export 'src/universities_event.dart';
export 'src/universities_state.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
library core_navigation;

import 'package:injectable/injectable.dart';

export 'src/countries_navigation_impl.dart';
export 'src/navigation_bloc.dart';
export 'src/navigation_event.dart';
export 'src/navigation_flow.dart';
export 'src/navigation_state.dart';
export 'src/splash_navigation_impl.dart';
export 'src/di.dart';

@InjectableInit.microPackage()
initMicroPackage() {}
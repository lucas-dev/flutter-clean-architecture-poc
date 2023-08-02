import 'package:common_di/di.dart';

import '../navigation.dart';

NavigationBloc initNavigation() {
  return serviceLocator<NavigationBloc>();
}
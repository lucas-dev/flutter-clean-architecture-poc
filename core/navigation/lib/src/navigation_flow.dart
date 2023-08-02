import 'package:countries_ui/ui.dart';
import 'package:flutter/widgets.dart';
import 'package:splash_ui/ui.dart';
import 'package:universities_ui/ui.dart';

import 'navigation_state.dart';

List<Page> onGeneratePages(NavigationState state, List<Page> pages) {
  return [
    if (state.splash) SplashPage.page(),
    if (state.countries) CountriesPage.page(),
    if (state.universities != null)
      UniversitiesPage.page(
          countryId: state.universities!.countryId,
          countryName: state.universities!.countryName)
  ];
}

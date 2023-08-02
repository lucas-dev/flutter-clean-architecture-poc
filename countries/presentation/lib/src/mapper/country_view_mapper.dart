import 'package:common_presentation/presentation.dart';
import 'package:countries_domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../model/country_view.dart';

@lazySingleton
class CountryViewMapper extends PresentationMapper<CountryView, Country> {
  @override
  CountryView mapToPresentation(Country domain) {
    return CountryView(id: domain.id, name: domain.name);
  }
}

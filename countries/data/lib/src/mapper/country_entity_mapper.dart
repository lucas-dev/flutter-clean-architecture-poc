import 'package:common_data/data.dart';
import 'package:countries_domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../model/country_entity.dart';

@lazySingleton
class CountryEntityMapper extends DataMapper<CountryEntity, Country> {
  @override
  Country mapFromData(CountryEntity entity) {
    return Country(id: entity.id, name: entity.name);
  }

  @override
  CountryEntity mapToData(Country domain) {
    return CountryEntity(id: domain.id, name: domain.name);
  }

}

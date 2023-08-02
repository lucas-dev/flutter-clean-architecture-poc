import 'package:injectable/injectable.dart';

import '../dao/countries_config_dao.dart';
import '../dao/countries_dao.dart';
import '../db/countries_database.dart';

@module
abstract class CountriesCacheModule {
  @preResolve
  Future<CountriesDatabase> countriesDatabase() async {
    return await $FloorCountriesDatabase.databaseBuilder(DATABASE_NAME).build();
  }
  @lazySingleton
  CountriesConfigDao provideConfigDao(CountriesDatabase database) =>
      database.configDao;

  @lazySingleton
  CountriesDao provideCountriesDao(CountriesDatabase database) =>
      database.countriesDao;
}

const DATABASE_NAME = "anabin.db";
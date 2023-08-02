import 'package:floor/floor.dart';

import '../dao/countries_config_dao.dart';
import '../model/countries_config.dart';

import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../model/country_cache.dart';
import '../dao/countries_dao.dart';
part 'countries_database.g.dart';

@Database(version: DATABASE_VERSION, entities: [CountryCache, CountriesConfig])
abstract class CountriesDatabase extends FloorDatabase {
  CountriesDao get countriesDao;

  CountriesConfigDao get configDao;
}

const DATABASE_VERSION = 1;
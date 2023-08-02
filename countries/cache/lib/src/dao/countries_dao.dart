
import 'package:floor/floor.dart';

import '../model/country_cache.dart';

const QUERY_COUNTRIES = "SELECT * FROM $TABLE_COUNTRY";
const QUERY_EXISTS = "SELECT EXISTS(SELECT 1 FROM $TABLE_COUNTRY)";
const DELETE_COUNTRIES = "DELETE FROM $TABLE_COUNTRY";
const QUERY_FILTER =
    "SELECT * FROM $TABLE_COUNTRY WHERE UPPER($COLUMN_NAME) LIKE '%' || :name || '%' ORDER BY $COLUMN_NAME ASC";

@dao
abstract class CountriesDao {
  @Query(QUERY_EXISTS)
  Future<int?> cachedCountriesExist();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(List<CountryCache> countries);

  @Query(DELETE_COUNTRIES)
  Future<void> clear();

  @Query(QUERY_COUNTRIES)
  Stream<List<CountryCache>?> getAll();

  @Query(QUERY_FILTER)
  Stream<List<CountryCache>?> filter(String name);
}
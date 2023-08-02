import 'package:floor/floor.dart';

import '../model/countries_config.dart';

@dao
abstract class CountriesConfigDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(CountriesConfig config);

  @Query("DELETE FROM $TABLE_CONFIG")
  Future<void> clear();

  @Query("SELECT * FROM $TABLE_CONFIG")
  Future<CountriesConfig?> get();
}
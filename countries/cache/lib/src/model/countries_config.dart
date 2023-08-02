import 'package:floor/floor.dart';

@Entity(tableName: TABLE_CONFIG)
class CountriesConfig {
  @PrimaryKey(autoGenerate: true)
  final int id;

  final int lastCacheTime;

  CountriesConfig({this.id = -1, this.lastCacheTime = 0});
}

const TABLE_CONFIG = "config";
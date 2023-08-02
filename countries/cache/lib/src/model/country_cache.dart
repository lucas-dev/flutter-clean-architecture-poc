
import 'package:floor/floor.dart';

@Entity(tableName: TABLE_COUNTRY)
class CountryCache {
  @PrimaryKey()
  final String id;

  @ColumnInfo(name: COLUMN_NAME)
  final String name;

  CountryCache({required this.id, required this.name});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CountryCache &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

const TABLE_COUNTRY = "country";
const COLUMN_NAME = "name";
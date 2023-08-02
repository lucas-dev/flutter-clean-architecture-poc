// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorCountriesDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$CountriesDatabaseBuilder databaseBuilder(String name) =>
      _$CountriesDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$CountriesDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$CountriesDatabaseBuilder(null);
}

class _$CountriesDatabaseBuilder {
  _$CountriesDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$CountriesDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$CountriesDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<CountriesDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$CountriesDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$CountriesDatabase extends CountriesDatabase {
  _$CountriesDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CountriesDao? _countriesDaoInstance;

  CountriesConfigDao? _configDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `country` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `config` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `lastCacheTime` INTEGER NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CountriesDao get countriesDao {
    return _countriesDaoInstance ??= _$CountriesDao(database, changeListener);
  }

  @override
  CountriesConfigDao get configDao {
    return _configDaoInstance ??=
        _$CountriesConfigDao(database, changeListener);
  }
}

class _$CountriesDao extends CountriesDao {
  _$CountriesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _countryCacheInsertionAdapter = InsertionAdapter(
            database,
            'country',
            (CountryCache item) =>
                <String, Object?>{'id': item.id, 'name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CountryCache> _countryCacheInsertionAdapter;

  @override
  Future<int?> cachedCountriesExist() async {
    return _queryAdapter.query('SELECT EXISTS(SELECT 1 FROM country)',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<void> clear() async {
    await _queryAdapter.queryNoReturn('DELETE FROM country');
  }

  @override
  Stream<List<CountryCache>?> getAll() {
    return _queryAdapter.queryListStream('SELECT * FROM country',
        mapper: (Map<String, Object?> row) =>
            CountryCache(id: row['id'] as String, name: row['name'] as String),
        queryableName: 'country',
        isView: false);
  }

  @override
  Stream<List<CountryCache>?> filter(String name) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM country WHERE UPPER(name) LIKE \'%\' || ?1 || \'%\' ORDER BY name ASC',
        mapper: (Map<String, Object?> row) =>
            CountryCache(id: row['id'] as String, name: row['name'] as String),
        arguments: [name],
        queryableName: 'country',
        isView: false);
  }

  @override
  Future<void> insert(List<CountryCache> countries) async {
    await _countryCacheInsertionAdapter.insertList(
        countries, OnConflictStrategy.replace);
  }
}

class _$CountriesConfigDao extends CountriesConfigDao {
  _$CountriesConfigDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _countriesConfigInsertionAdapter = InsertionAdapter(
            database,
            'config',
            (CountriesConfig item) => <String, Object?>{
                  'id': item.id,
                  'lastCacheTime': item.lastCacheTime
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CountriesConfig> _countriesConfigInsertionAdapter;

  @override
  Future<void> clear() async {
    await _queryAdapter.queryNoReturn('DELETE FROM config');
  }

  @override
  Future<CountriesConfig?> get() async {
    return _queryAdapter.query('SELECT * FROM config',
        mapper: (Map<String, Object?> row) => CountriesConfig(
            id: row['id'] as int, lastCacheTime: row['lastCacheTime'] as int));
  }

  @override
  Future<void> insert(CountriesConfig config) async {
    await _countriesConfigInsertionAdapter.insert(
        config, OnConflictStrategy.replace);
  }
}

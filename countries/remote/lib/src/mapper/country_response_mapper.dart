import 'package:common_remote/remote.dart';
import 'package:countries_data/data.dart';
import 'package:injectable/injectable.dart';

import '../model/country_response.dart';

@lazySingleton
class CountryResponseMapper extends RemoteMapper<CountryResponse, CountryEntity> {
  @override
  CountryEntity mapFromRemote(CountryResponse remote) {
    return CountryEntity(id: remote.id, name: remote.name);
  }
}

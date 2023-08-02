import 'package:common_remote/remote.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_data/data.dart';

import '../model/university_response.dart';

@lazySingleton
class UniversityResponseMapper extends RemoteMapper<UniversityResponse, UniversityEntity> {
  @override
  UniversityEntity mapFromRemote(UniversityResponse remote) {
    return UniversityEntity(
        id: remote.id,
        name: remote.name,
        city: remote.city,
        country: remote.country,
        description: remote.description,
        status: remote.status);
  }
}

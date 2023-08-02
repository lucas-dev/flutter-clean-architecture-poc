import 'package:common_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_data/src/sources/universities_remote.dart';
import 'package:universities_domain/domain.dart';

import 'mapper/university_entity_mapper.dart';

@Injectable(as: UniversitiesRepository)
class UniversitiesRepositoryImpl implements UniversitiesRepository {
  final UniversitiesRemote remote;
  final UniversityEntityMapper mapper;

  UniversitiesRepositoryImpl({required this.remote, required this.mapper});

  @override
  Stream<Result<List<University>>> retrieveAll(
      String countryId, String countryName) async* {
    yield const Loading();
    try {
      var universitiesRemote = await remote.fetch(countryId, countryName);
      yield Success(universitiesRemote
          .map((university) => mapper.mapFromData(university))
          .toList());
    } on Exception catch (error) {
      yield Error(error.toString());
    }
  }
}

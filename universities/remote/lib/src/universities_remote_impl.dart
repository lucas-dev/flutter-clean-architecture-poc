import 'package:injectable/injectable.dart';
import 'package:universities_data/data.dart';
import 'package:universities_remote/src/converter/universities_converter.dart';

import 'api/universities_api.dart';
import 'mapper/university_response_mapper.dart';

@Injectable(as: UniversitiesRemote)
class UniversitieRemoteImpl implements UniversitiesRemote {
  final UniversitiesApi api;
  final UniversityResponseMapper mapper;

  UniversitieRemoteImpl({required this.api, required this.mapper});

  @override
  Future<List<UniversityEntity>> fetch(
      String countryId, String countryName) async {
    final response = await api.fetchUniversities(/*countryId,*/ countryName);
    var universities = response
        .toUniversities()
        .map((university) => mapper.mapFromRemote(university))
        .toList();
    return universities;
  }
}

import '../model/university_entity.dart';

abstract class UniversitiesRemote {
  Future<List<UniversityEntity>> fetch(String countryId, String countryName);
}

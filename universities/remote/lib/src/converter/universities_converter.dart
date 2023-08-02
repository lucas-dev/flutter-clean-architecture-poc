import '../model/universities_response.dart';
import '../model/university_response.dart';

extension UniversitiesConverter on UniversitiesResponse {
  static const int INDEX_ID = 1;
  static const int INDEX_NAME = 2;
  static const int INDEX_CITY = 3;
  static const int INDEX_COUNTRY = 6;
  static const int INDEX_DESCRIPTION = 4;
  static const int INDEX_STATUS = 5;

  List<UniversityResponse> toUniversities() {
    List<UniversityResponse> response = [];
    UniversityResponse university;
    for (var data in aaData) {
      {
        university = UniversityResponse(
            id: data[INDEX_ID]??"",
            name: data[INDEX_NAME]??"",
            city: data[INDEX_CITY]??"",
            country: data[INDEX_COUNTRY]??"",
            description: data[INDEX_DESCRIPTION]??"",
            status: data[INDEX_STATUS]??"");
        response.add(university);
      }
    }
    return response;
  }
}
import 'package:common_domain/domain.dart';
import '../model/university.dart';

abstract class UniversitiesRepository {
  Stream<Result<List<University>>> retrieveAll(String countryId, String countryName);
}

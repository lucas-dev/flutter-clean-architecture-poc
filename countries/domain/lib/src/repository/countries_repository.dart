import 'package:common_domain/domain.dart';

import '../model/country.dart';

abstract class CountriesRepository {
  Stream<Result<List<Country>>> retrieveAll(bool refresh);
  Stream<Result<List<Country>>> filter(String query);
}
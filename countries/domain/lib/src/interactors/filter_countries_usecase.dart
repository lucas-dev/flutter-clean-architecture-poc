import 'package:common_domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../model/country.dart';
import '../repository/countries_repository.dart';

@lazySingleton
class FilterCountriesUseCase extends StreamUseCase<List<Country>, String> {
  final CountriesRepository repository;

  FilterCountriesUseCase({required this.repository});

  @override
  Stream<Result<List<Country>>> execute(String query) {
    return repository.filter(query);
  }
}
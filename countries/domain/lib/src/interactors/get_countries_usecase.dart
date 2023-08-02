import 'package:common_domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../model/country.dart';
import '../repository/countries_repository.dart';

@lazySingleton
class GetCountriesUseCase extends StreamUseCase<List<Country>, bool> {
  final CountriesRepository repository;

  GetCountriesUseCase({required this.repository});

  @override
  Stream<Result<List<Country>>> execute(bool refresh) {
    return repository.retrieveAll(refresh);
  }
}

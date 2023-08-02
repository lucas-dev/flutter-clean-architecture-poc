import 'package:common_domain/domain.dart';
import 'package:injectable/injectable.dart';
import '../model/university.dart';
import '../repository/universities_repository.dart';

@lazySingleton
class GetUniversitiesUseCase
    extends StreamUseCase<List<University>, UniversitiesParams> {
  final UniversitiesRepository repository;

  GetUniversitiesUseCase({required this.repository});

  @override
  Stream<Result<List<University>>> execute(UniversitiesParams params) {
    return repository.retrieveAll(params.countryId, params.countryName);
  }
}

class UniversitiesParams {
  UniversitiesParams(this.countryId, this.countryName);

  final String countryId;
  final String countryName;
}

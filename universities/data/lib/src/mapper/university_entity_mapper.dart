import 'package:common_data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_domain/domain.dart';

import '../model/university_entity.dart';

@lazySingleton
class UniversityEntityMapper extends DataMapper<UniversityEntity, University> {
  @override
  University mapFromData(UniversityEntity entity) {
    return University(
        id: entity.id,
        name: entity.name,
        city: entity.city,
        country: entity.country,
        description: entity.description,
        status: entity.status);
  }

  @override
  UniversityEntity mapToData(University domain) {
    return UniversityEntity(
        id: domain.id,
        name: domain.name,
        city: domain.city,
        country: domain.country,
        description: domain.description,
        status: domain.status);
  }
}

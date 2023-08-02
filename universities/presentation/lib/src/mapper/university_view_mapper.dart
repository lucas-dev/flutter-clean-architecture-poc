import 'package:common_presentation/presentation.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_domain/domain.dart';

import '../model/university_view.dart';

@lazySingleton
class UniversityViewMapper
    extends PresentationMapper<UniversityView, University> {
  @override
  UniversityView mapToPresentation(University domain) {
    return UniversityView(
        id: domain.id,
        name: domain.name,
        city: domain.city,
        country: domain.country,
        description: domain.description,
        status: domain.status);
  }
}

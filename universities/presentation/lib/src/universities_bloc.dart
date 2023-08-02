import 'package:common_presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:universities_domain/domain.dart';
import 'package:universities_presentation/src/universities_event.dart';
import 'package:universities_presentation/src/universities_state.dart';

import 'mapper/university_view_mapper.dart';

@lazySingleton
class UniversitiesBloc extends Bloc<UniversitiesEvent, UniversitiesState> {
  final GetUniversitiesUseCase getUniversitiesUseCase;
  final UniversityViewMapper mapper;

  UniversitiesBloc({required this.getUniversitiesUseCase, required this.mapper})
      : super(const UniversitiesState()) {
    on<UniversitiesEvent>((event, emit) {
      event.when(request: (String countryId, String countryName) {
        emit.forEach(
          getUniversitiesUseCase
              .call(UniversitiesParams(countryId, countryName)),
          onData: _processResult,
        );
      });
    });
  }

  UniversitiesState _processResult(result) {
    return result.when(
        data: (List<University> data) => state.copyWith(
            viewStatus: Loaded(
                (data.map((university) => mapper.mapToPresentation(university)))
                    .toList(),
                LoadType.FIRST_LOAD)),
        error: (String message) => state.copyWith(viewStatus: Error(message)),
        loading: () =>
            state.copyWith(viewStatus: const Loading(LoadType.FIRST_LOAD)));
  }
}

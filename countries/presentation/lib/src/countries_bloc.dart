import 'package:bloc/bloc.dart';
import 'package:common_presentation/presentation.dart';
import 'package:countries_domain/domain.dart';
import 'package:injectable/injectable.dart';

import 'countries_event.dart';
import 'countries_state.dart';
import 'mapper/country_view_mapper.dart';


@lazySingleton
class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final GetCountriesUseCase getCountriesUseCase;
  final FilterCountriesUseCase filterCountriesUseCase;
  final CountryViewMapper mapper;

  CountriesBloc(
      {required this.getCountriesUseCase,
      required this.filterCountriesUseCase,
      required this.mapper})
      : super(const CountriesState()) {
    on<CountriesEvent>((event, emit) async {
      await event.when(request: () async {
        await emit.forEach(
          getCountriesUseCase.call(false),
          onData: _processResult,
        );
      }, refresh: () async {
        await emit.forEach(
          getCountriesUseCase.call(true),
          onData: _processResult,
        );
      }, filter: (String query) async {
        await emit.forEach(
          filterCountriesUseCase.call(query),
          onData: _processResult,
        );
      });
    });
  }

  CountriesState _processResult(result) {
      return result.when(
          data: (List<Country> data) => state.copyWith(
              viewStatus: Loaded(
                  (data.map(
                          (country) => mapper.mapToPresentation(country)))
                      .toList(),
                  LoadType.FIRST_LOAD)),
          error: (String message) =>
              state.copyWith(viewStatus: Error(message)),
          loading: () => state.copyWith(
              viewStatus:
                  const Loading(LoadType.FIRST_LOAD)));
    }
}

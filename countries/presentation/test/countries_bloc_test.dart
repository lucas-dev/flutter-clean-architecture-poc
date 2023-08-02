import 'package:common_presentation/presentation.dart';
import 'package:countries_domain/domain.dart';
import 'package:countries_presentation/presentation.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:common_domain/domain.dart';

class MockFilterCountriesUseCase extends Mock
    implements FilterCountriesUseCase {}

class MockGetCountriesUseCase extends Mock implements GetCountriesUseCase {}

void main() {
  late CountryViewMapper mapper;
  late CountriesBloc countriesBloc;
  late GetCountriesUseCase getCountriesUseCase;
  late FilterCountriesUseCase filterCountriesUseCase;

  setUp(() {
    getCountriesUseCase = MockGetCountriesUseCase();
    filterCountriesUseCase = MockFilterCountriesUseCase();
    mapper = CountryViewMapper();
    countriesBloc = CountriesBloc(
        getCountriesUseCase: getCountriesUseCase,
        filterCountriesUseCase: filterCountriesUseCase,
        mapper: mapper);
  });

  group('events', () {
    blocTest<CountriesBloc, CountriesState>(
        'verify that data refresh is not forced when data is requested',
        build: () {
          when(() => getCountriesUseCase.call(any())).thenAnswer((_) =>
              Stream.fromIterable([Result.loading(), Result.error("sdf")]));
          return countriesBloc;
        },
        // skip: 1,
        act: (bloc) => bloc.add(const RequestCountries()),
        expect: () => [
              isA<CountriesState>().having((w) => w.viewStatus, '',
                  ViewStatus.loading(LoadType.FIRST_LOAD)),
              isA<CountriesState>().having(
                  (w) => w.viewStatus, '', ViewStatus<dynamic>.error("sdf")),
            ],
        verify: (_) {
          final captured =
              verify(() => getCountriesUseCase.call(captureAny())).captured;
          expect(captured.last, equals(false));
        });

    blocTest<CountriesBloc, CountriesState>(
        'when data refresh is requested, verify that fresh repository data is required',
        build: () {
          when(() => getCountriesUseCase.call(any())).thenAnswer((_) =>
              Stream.fromIterable([Result.loading(), Result.error("sdf")]));
          return countriesBloc;
        },
        // skip: 1,
        act: (bloc) => bloc.add(const RefreshCountries()),
        expect: () => [
              isA<CountriesState>().having((w) => w.viewStatus, '',
                  ViewStatus.loading(LoadType.FIRST_LOAD)),
              isA<CountriesState>().having(
                  (w) => w.viewStatus, '', ViewStatus<dynamic>.error("sdf")),
            ],
        verify: (_) {
          final captured =
              verify(() => getCountriesUseCase.call(captureAny())).captured;
          expect(captured.last, equals(true));
        });

    blocTest<CountriesBloc, CountriesState>(
        'verify that the repository is called with the specified query when data filtering is required',
        build: () {
          when(() => filterCountriesUseCase.call(any())).thenAnswer((_) =>
              Stream.fromIterable([Result.loading(), Result.error("sdf")]));
          return countriesBloc;
        },
        // skip: 1,
        act: (bloc) => bloc.add(const FilterCountries("Arg")),
        expect: () => [
              isA<CountriesState>().having((w) => w.viewStatus, '',
                  ViewStatus.loading(LoadType.FIRST_LOAD)),
              isA<CountriesState>().having(
                  (w) => w.viewStatus, '', ViewStatus<dynamic>.error("sdf")),
            ],
        verify: (_) {
          final captured =
              verify(() => filterCountriesUseCase.call(captureAny())).captured;
          expect(captured.last, equals("Arg"));
        });
  });

  group('state', () {
    blocTest<CountriesBloc, CountriesState>(
      'verify that the Loading state is returned when the repository is processing the request',
      build: () {
        when(() => filterCountriesUseCase.call(any()))
            .thenAnswer((_) => Stream.fromIterable([Result.loading()]));
        return countriesBloc;
      },
      act: (bloc) => bloc.add(const FilterCountries("Arg")),
      expect: () => [
        isA<CountriesState>().having(
            (w) => w.viewStatus, '', ViewStatus.loading(LoadType.FIRST_LOAD)),
      ],
    );

    blocTest<CountriesBloc, CountriesState>(
      'verify that the Error state is returned when data fetching fails',
      build: () {
        when(() => filterCountriesUseCase.call(any())).thenAnswer((_) =>
            Stream.fromIterable([Result.loading(), Result.error("sdf")]));
        return countriesBloc;
      },
      act: (bloc) => bloc.add(const FilterCountries("Arg")),
      skip: 1,
      expect: () => [
        isA<CountriesState>()
            .having((w) => w.viewStatus, '', ViewStatus<dynamic>.error("sdf")),
      ],
    );

    blocTest<CountriesBloc, CountriesState>(
      'verify that the Loaded state is returned when the repository returns data successfully',
      build: () {
        when(() => filterCountriesUseCase.call(any()))
            .thenAnswer((_) => Stream.fromIterable([
                  Result.loading(),
                  Result.data(new List.from([Country(id: "1", name: "dsd")]))
                ]));
        return countriesBloc;
      },
      act: (bloc) => bloc.add(const FilterCountries("Arg")),
      skip: 1,
      expect: () => [
        isA<CountriesState>().having(
            (w) => w.viewStatus,
            '',
            ViewStatus<dynamic>.loaded(
                [CountryView(id: "1", name: "dsd")], LoadType.FIRST_LOAD)),
      ],
    );
  });
}

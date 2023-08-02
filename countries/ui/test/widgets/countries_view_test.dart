import 'package:bloc_test/bloc_test.dart';
import 'package:common_presentation/presentation.dart';
import 'package:common_ui/ui.dart';
import 'package:countries_presentation/presentation.dart';
import 'package:countries_ui/src/widgets/countries_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCountriesBloc extends MockBloc<CountriesEvent, CountriesState>
    implements CountriesBloc {}

extension on WidgetTester {
  Future<void> pumpCountriesView(CountriesBloc tickerBloc) {
    return pumpWidget(
      MaterialApp(
        home: BlocProvider.value(
            value: tickerBloc, child: Material(child: CountriesBlocBuilder())),
      ),
    );
  }
}

void main() {
  late CountriesBloc bloc;

  setUp(() {
    bloc = MockCountriesBloc();
  });

  testWidgets('verify that the Loading widget is shown when data is loading.',
      (WidgetTester tester) async {
    when(() => bloc.state).thenReturn(
        CountriesState(viewStatus: ViewStatus.loading(LoadType.FIRST_LOAD)));

    await tester.pumpCountriesView(bloc);

    expect(find.byType(LoadingWidget), findsOneWidget);
  });

  testWidgets(
      'verify that the Error widget is shown when data retrieving fails',
      (WidgetTester tester) async {
    when(() => bloc.state).thenReturn(
        CountriesState(viewStatus: ViewStatus.error("error message")));

    await tester.pumpCountriesView(bloc);

    expect(find.text("error message"), findsOneWidget);
  });

  testWidgets(
      'verify that the widget for empty data is shown when no data is coming from the repository',
      (WidgetTester tester) async {
    when(() => bloc.state).thenReturn(CountriesState(
        viewStatus: ViewStatus.loaded(List.empty(), LoadType.FIRST_LOAD)));

    await tester.pumpCountriesView(bloc);

    expect(find.text("No data"), findsOneWidget);
  });

  testWidgets(
      'verify that the listview widget is shown when data in coming from the repository',
      (WidgetTester tester) async {
      when(() => bloc.state).thenReturn(CountriesState(
          viewStatus: ViewStatus.loaded([CountryView(id: "", name: "")], LoadType.FIRST_LOAD)));

    await tester.pumpCountriesView(bloc);

    expect(find.byType(ListViewWidget), findsOneWidget);
  });
}

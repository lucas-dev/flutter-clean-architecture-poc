import 'package:common_ui/ui.dart';
import 'package:countries_di/di.dart';
import 'package:countries_presentation/presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'countries_bloc_builder.dart';

class CountriesScaffold extends PlatformWidget {
  final String title;
  final controller = TextEditingController();

  CountriesScaffold({required this.title});

  @override
  Widget buildCupertino(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: SafeArea(child: buildBody(context)),
      ),
    );
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: buildBody(context),
      ),
    );
  }

  BlocProvider<CountriesBloc> buildBody(BuildContext context) {
    return BlocProvider<CountriesBloc>(
      create: (_) => countriesInjector().request() as CountriesBloc,
      child: Column(
        children: [
          SearchView(
            controller: controller,
            onChangedCallback: (String query) {
              countriesInjector().filter(query);
            },
            onClearCallback: () {
              countriesInjector().resetFilter();
            },
          ),
          Expanded(
            child: CountriesBlocBuilder(),
            flex: 1,
          )
        ],
      ),
    );
  }
}

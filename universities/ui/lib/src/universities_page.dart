import 'package:common_presentation/presentation.dart';
import 'package:common_ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universities_di/di.dart';
import 'package:universities_presentation/presentation.dart';
import 'widgets/university_display.dart';

class UniversitiesPage extends StatefulWidget {
  const UniversitiesPage(
      {Key? key, required this.countryId, required this.countryName})
      : super(key: key);

  final String countryId;
  final String countryName;

  static Page page({required String countryId, required String countryName}) {
    return MaterialPage<void>(
      child: UniversitiesPage(
        countryId: countryId,
        countryName: countryName,
      ),
    );
  }

  @override
  State<UniversitiesPage> createState() => _UniversitiesPageState();
}

class _UniversitiesPageState extends State<UniversitiesPage> {
  bool _isLoadingDependencies = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Universities'),
        ),
        body: buildBody(context));
  }

  BlocProvider<UniversitiesBloc> buildBody(BuildContext context) {
    return BlocProvider<UniversitiesBloc>(
      create: (_) => universitiesInjector().requestUniversities(
          widget.countryId, widget.countryName) as UniversitiesBloc,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              if (_isLoadingDependencies)
                LoadingWidget()
              else
                BlocBuilder<UniversitiesBloc, UniversitiesState>(
                  builder: (context, state) {
                    return state.viewStatus.when(
                        idle: () => Container(
                              height: MediaQuery.of(context).size.height / 3,
                              child: Placeholder(),
                            ),
                        error: (String message) =>
                            MessageDisplay(message: message),
                        loading: (LoadType loadType) => LoadingWidget(),
                        loaded: (data, LoadType loadType) {
                          if (data.isEmpty) {
                            return MessageDisplay(message: 'No data');
                          } else {
                            return UniversityListView(universities: data);
                          }
                        });
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    universitiesInjector().pushUniversitiesDependencies().then((value) {
      setState(() {
        _isLoadingDependencies = false;
      });
    });
  }

  @override
  void dispose() {
    universitiesInjector().disposeDependencies();
    super.dispose();
  }
}

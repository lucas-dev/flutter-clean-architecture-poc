import 'dart:async';

import 'package:core_di/di.dart';
import 'package:core_navigation/navigation.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  return runZonedGuarded(() async {
    runApp(
      BlocProvider(
        create: (_) => initNavigation(),
        child: AnabinApp(),
      ),
    );
  }, (error, stack) {});
}

class AnabinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anabin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FlowBuilder(
        state: context.watch<NavigationBloc>().state,
        onGeneratePages: onGeneratePages,
      ),
    );
  }
}

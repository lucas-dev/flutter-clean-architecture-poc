import 'package:common_ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_di/di.dart';
import 'package:splash_presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashScaffold extends PlatformWidget {
  final Widget child;

  SplashScaffold({required this.child});

  @override
  Widget buildCupertino(BuildContext context) {
    return CupertinoPageScaffold(child: BlocProvider<SplashBloc>(
      create: (_) =>
      splashInjector().start() as SplashBloc,
      child: child,
    ),);
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashBloc>(
        create: (_) =>
        splashInjector().start() as SplashBloc,
        child: child,
      ),
    );
  }

}
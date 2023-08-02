import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splash_di/di.dart';
import 'package:splash_presentation/presentation.dart';
import 'package:splash_ui/src/splash_scaffold.dart';
import 'package:splash_ui/src/splash_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Page page() {
    return const MaterialPage<void>(
      child: SplashPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashScaffold(child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
      child: Center(child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) {
          return state.maybeWhen(loaded: () {
            splashInjector().navigateToCountries();
            return const SizedBox.shrink();
          }, orElse: () {
            return const SplashWidget();
          });
        },
      )),
    ),);
  }
}

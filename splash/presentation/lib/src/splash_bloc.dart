import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:splash_presentation/src/splash_events.dart';
import 'package:splash_presentation/src/splash_state.dart';

@lazySingleton
class SplashBloc extends Bloc<SplashEvents, SplashState> {
  SplashBloc():super(const SplashState.idle()) {
    on<SplashEvents>((event, emit) async {
      if (event == const SplashEvents.start()) {
        emit(const SplashState.loading());
        await Future.delayed(const Duration(seconds: 4));
        emit(const SplashState.loaded());
      }
    });
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.idle() = _Idle;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.loaded() = _Loaded;
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_events.freezed.dart';

@freezed
class SplashEvents with _$SplashEvents {
  const factory SplashEvents.start() = _Start;
}
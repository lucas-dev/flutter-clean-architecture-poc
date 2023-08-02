import 'package:common_presentation/presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'universities_state.freezed.dart';

@freezed
class UniversitiesState with _$UniversitiesState {
  const factory UniversitiesState({
    @Default(ViewStatus.idle()) ViewStatus viewStatus}) = _UniversitiesState;
}

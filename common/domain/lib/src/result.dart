import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.data(T data) = Success<T>;
  const factory Result.error(String message) = Error<T>;
  const factory Result.loading() = Loading<T>;
}
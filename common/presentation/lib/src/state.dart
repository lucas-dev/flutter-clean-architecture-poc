import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
class ViewStatus<T> with _$ViewStatus<T> {
  const factory ViewStatus.idle() = Idle<T>;
  const factory ViewStatus.error(String message) = Error<T>;
  const factory ViewStatus.loading(LoadType loadType) = Loading<T>;
  const factory ViewStatus.loaded(T data, LoadType loadType) = Loaded<T>;
}

enum LoadType { FIRST_LOAD, SEARCH }
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countries_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() refresh,
    required TResult Function(String query) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCountries value) request,
    required TResult Function(RefreshCountries value) refresh,
    required TResult Function(FilterCountries value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesEventCopyWith<$Res> {
  factory $CountriesEventCopyWith(
          CountriesEvent value, $Res Function(CountriesEvent) then) =
      _$CountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountriesEventCopyWithImpl<$Res>
    implements $CountriesEventCopyWith<$Res> {
  _$CountriesEventCopyWithImpl(this._value, this._then);

  final CountriesEvent _value;
  // ignore: unused_field
  final $Res Function(CountriesEvent) _then;
}

/// @nodoc
abstract class _$$RequestCountriesCopyWith<$Res> {
  factory _$$RequestCountriesCopyWith(
          _$RequestCountries value, $Res Function(_$RequestCountries) then) =
      __$$RequestCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCountriesCopyWithImpl<$Res>
    extends _$CountriesEventCopyWithImpl<$Res>
    implements _$$RequestCountriesCopyWith<$Res> {
  __$$RequestCountriesCopyWithImpl(
      _$RequestCountries _value, $Res Function(_$RequestCountries) _then)
      : super(_value, (v) => _then(v as _$RequestCountries));

  @override
  _$RequestCountries get _value => super._value as _$RequestCountries;
}

/// @nodoc

class _$RequestCountries implements RequestCountries {
  const _$RequestCountries();

  @override
  String toString() {
    return 'CountriesEvent.request()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() refresh,
    required TResult Function(String query) filter,
  }) {
    return request();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
  }) {
    return request?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCountries value) request,
    required TResult Function(RefreshCountries value) refresh,
    required TResult Function(FilterCountries value) filter,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestCountries implements CountriesEvent {
  const factory RequestCountries() = _$RequestCountries;
}

/// @nodoc
abstract class _$$RefreshCountriesCopyWith<$Res> {
  factory _$$RefreshCountriesCopyWith(
          _$RefreshCountries value, $Res Function(_$RefreshCountries) then) =
      __$$RefreshCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCountriesCopyWithImpl<$Res>
    extends _$CountriesEventCopyWithImpl<$Res>
    implements _$$RefreshCountriesCopyWith<$Res> {
  __$$RefreshCountriesCopyWithImpl(
      _$RefreshCountries _value, $Res Function(_$RefreshCountries) _then)
      : super(_value, (v) => _then(v as _$RefreshCountries));

  @override
  _$RefreshCountries get _value => super._value as _$RefreshCountries;
}

/// @nodoc

class _$RefreshCountries implements RefreshCountries {
  const _$RefreshCountries();

  @override
  String toString() {
    return 'CountriesEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() refresh,
    required TResult Function(String query) filter,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCountries value) request,
    required TResult Function(RefreshCountries value) refresh,
    required TResult Function(FilterCountries value) filter,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshCountries implements CountriesEvent {
  const factory RefreshCountries() = _$RefreshCountries;
}

/// @nodoc
abstract class _$$FilterCountriesCopyWith<$Res> {
  factory _$$FilterCountriesCopyWith(
          _$FilterCountries value, $Res Function(_$FilterCountries) then) =
      __$$FilterCountriesCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$FilterCountriesCopyWithImpl<$Res>
    extends _$CountriesEventCopyWithImpl<$Res>
    implements _$$FilterCountriesCopyWith<$Res> {
  __$$FilterCountriesCopyWithImpl(
      _$FilterCountries _value, $Res Function(_$FilterCountries) _then)
      : super(_value, (v) => _then(v as _$FilterCountries));

  @override
  _$FilterCountries get _value => super._value as _$FilterCountries;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FilterCountries(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCountries implements FilterCountries {
  const _$FilterCountries(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CountriesEvent.filter(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCountries &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$FilterCountriesCopyWith<_$FilterCountries> get copyWith =>
      __$$FilterCountriesCopyWithImpl<_$FilterCountries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() refresh,
    required TResult Function(String query) filter,
  }) {
    return filter(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
  }) {
    return filter?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? refresh,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCountries value) request,
    required TResult Function(RefreshCountries value) refresh,
    required TResult Function(FilterCountries value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCountries value)? request,
    TResult Function(RefreshCountries value)? refresh,
    TResult Function(FilterCountries value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class FilterCountries implements CountriesEvent {
  const factory FilterCountries(final String query) = _$FilterCountries;

  String get query;
  @JsonKey(ignore: true)
  _$$FilterCountriesCopyWith<_$FilterCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

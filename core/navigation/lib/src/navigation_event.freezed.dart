// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(String countryId, String countryName)
        toUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToCountries value) toCountries,
    required TResult Function(ToUniversities value) toUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class _$$ToCountriesCopyWith<$Res> {
  factory _$$ToCountriesCopyWith(
          _$ToCountries value, $Res Function(_$ToCountries) then) =
      __$$ToCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToCountriesCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$ToCountriesCopyWith<$Res> {
  __$$ToCountriesCopyWithImpl(
      _$ToCountries _value, $Res Function(_$ToCountries) _then)
      : super(_value, (v) => _then(v as _$ToCountries));

  @override
  _$ToCountries get _value => super._value as _$ToCountries;
}

/// @nodoc

class _$ToCountries implements ToCountries {
  const _$ToCountries();

  @override
  String toString() {
    return 'NavigationEvent.toCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(String countryId, String countryName)
        toUniversities,
  }) {
    return toCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
  }) {
    return toCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
    required TResult orElse(),
  }) {
    if (toCountries != null) {
      return toCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToCountries value) toCountries,
    required TResult Function(ToUniversities value) toUniversities,
  }) {
    return toCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
  }) {
    return toCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
    required TResult orElse(),
  }) {
    if (toCountries != null) {
      return toCountries(this);
    }
    return orElse();
  }
}

abstract class ToCountries implements NavigationEvent {
  const factory ToCountries() = _$ToCountries;
}

/// @nodoc
abstract class _$$ToUniversitiesCopyWith<$Res> {
  factory _$$ToUniversitiesCopyWith(
          _$ToUniversities value, $Res Function(_$ToUniversities) then) =
      __$$ToUniversitiesCopyWithImpl<$Res>;
  $Res call({String countryId, String countryName});
}

/// @nodoc
class __$$ToUniversitiesCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$ToUniversitiesCopyWith<$Res> {
  __$$ToUniversitiesCopyWithImpl(
      _$ToUniversities _value, $Res Function(_$ToUniversities) _then)
      : super(_value, (v) => _then(v as _$ToUniversities));

  @override
  _$ToUniversities get _value => super._value as _$ToUniversities;

  @override
  $Res call({
    Object? countryId = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_$ToUniversities(
      countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUniversities implements ToUniversities {
  const _$ToUniversities(this.countryId, this.countryName);

  @override
  final String countryId;
  @override
  final String countryName;

  @override
  String toString() {
    return 'NavigationEvent.toUniversities(countryId: $countryId, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUniversities &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(countryName));

  @JsonKey(ignore: true)
  @override
  _$$ToUniversitiesCopyWith<_$ToUniversities> get copyWith =>
      __$$ToUniversitiesCopyWithImpl<_$ToUniversities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(String countryId, String countryName)
        toUniversities,
  }) {
    return toUniversities(countryId, countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
  }) {
    return toUniversities?.call(countryId, countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(String countryId, String countryName)? toUniversities,
    required TResult orElse(),
  }) {
    if (toUniversities != null) {
      return toUniversities(countryId, countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToCountries value) toCountries,
    required TResult Function(ToUniversities value) toUniversities,
  }) {
    return toUniversities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
  }) {
    return toUniversities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToCountries value)? toCountries,
    TResult Function(ToUniversities value)? toUniversities,
    required TResult orElse(),
  }) {
    if (toUniversities != null) {
      return toUniversities(this);
    }
    return orElse();
  }
}

abstract class ToUniversities implements NavigationEvent {
  const factory ToUniversities(
      final String countryId, final String countryName) = _$ToUniversities;

  String get countryId;
  String get countryName;
  @JsonKey(ignore: true)
  _$$ToUniversitiesCopyWith<_$ToUniversities> get copyWith =>
      throw _privateConstructorUsedError;
}

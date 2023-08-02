// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  bool get splash => throw _privateConstructorUsedError;
  bool get countries => throw _privateConstructorUsedError;
  CountriesNavigationState? get universities =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool splash, bool countries, CountriesNavigationState? universities});

  $CountriesNavigationStateCopyWith<$Res>? get universities;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? splash = freezed,
    Object? countries = freezed,
    Object? universities = freezed,
  }) {
    return _then(_value.copyWith(
      splash: splash == freezed
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as bool,
      universities: universities == freezed
          ? _value.universities
          : universities // ignore: cast_nullable_to_non_nullable
              as CountriesNavigationState?,
    ));
  }

  @override
  $CountriesNavigationStateCopyWith<$Res>? get universities {
    if (_value.universities == null) {
      return null;
    }

    return $CountriesNavigationStateCopyWith<$Res>(_value.universities!,
        (value) {
      return _then(_value.copyWith(universities: value));
    });
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool splash, bool countries, CountriesNavigationState? universities});

  @override
  $CountriesNavigationStateCopyWith<$Res>? get universities;
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, (v) => _then(v as _$_NavigationState));

  @override
  _$_NavigationState get _value => super._value as _$_NavigationState;

  @override
  $Res call({
    Object? splash = freezed,
    Object? countries = freezed,
    Object? universities = freezed,
  }) {
    return _then(_$_NavigationState(
      splash: splash == freezed
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as bool,
      universities: universities == freezed
          ? _value.universities
          : universities // ignore: cast_nullable_to_non_nullable
              as CountriesNavigationState?,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {required this.splash, this.countries = false, this.universities = null});

  @override
  final bool splash;
  @override
  @JsonKey()
  final bool countries;
  @override
  @JsonKey()
  final CountriesNavigationState? universities;

  @override
  String toString() {
    return 'NavigationState(splash: $splash, countries: $countries, universities: $universities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            const DeepCollectionEquality().equals(other.splash, splash) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality()
                .equals(other.universities, universities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(splash),
      const DeepCollectionEquality().hash(countries),
      const DeepCollectionEquality().hash(universities));

  @JsonKey(ignore: true)
  @override
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required final bool splash,
      final bool countries,
      final CountriesNavigationState? universities}) = _$_NavigationState;

  @override
  bool get splash;
  @override
  bool get countries;
  @override
  CountriesNavigationState? get universities;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

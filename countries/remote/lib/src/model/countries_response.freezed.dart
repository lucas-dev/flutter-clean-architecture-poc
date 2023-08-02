// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countries_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesResponse _$CountriesResponseFromJson(Map<String, dynamic> json) {
  return _CountriesResponse.fromJson(json);
}

/// @nodoc
mixin _$CountriesResponse {
  List<CountryResponse>? get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesResponseCopyWith<CountriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesResponseCopyWith<$Res> {
  factory $CountriesResponseCopyWith(
          CountriesResponse value, $Res Function(CountriesResponse) then) =
      _$CountriesResponseCopyWithImpl<$Res>;
  $Res call({List<CountryResponse>? countries});
}

/// @nodoc
class _$CountriesResponseCopyWithImpl<$Res>
    implements $CountriesResponseCopyWith<$Res> {
  _$CountriesResponseCopyWithImpl(this._value, this._then);

  final CountriesResponse _value;
  // ignore: unused_field
  final $Res Function(CountriesResponse) _then;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CountriesResponseCopyWith<$Res>
    implements $CountriesResponseCopyWith<$Res> {
  factory _$$_CountriesResponseCopyWith(_$_CountriesResponse value,
          $Res Function(_$_CountriesResponse) then) =
      __$$_CountriesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<CountryResponse>? countries});
}

/// @nodoc
class __$$_CountriesResponseCopyWithImpl<$Res>
    extends _$CountriesResponseCopyWithImpl<$Res>
    implements _$$_CountriesResponseCopyWith<$Res> {
  __$$_CountriesResponseCopyWithImpl(
      _$_CountriesResponse _value, $Res Function(_$_CountriesResponse) _then)
      : super(_value, (v) => _then(v as _$_CountriesResponse));

  @override
  _$_CountriesResponse get _value => super._value as _$_CountriesResponse;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_$_CountriesResponse(
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountriesResponse implements _CountriesResponse {
  const _$_CountriesResponse({required final List<CountryResponse>? countries})
      : _countries = countries;

  factory _$_CountriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CountriesResponseFromJson(json);

  final List<CountryResponse>? _countries;
  @override
  List<CountryResponse>? get countries {
    final value = _countries;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CountriesResponse(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountriesResponse &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  _$$_CountriesResponseCopyWith<_$_CountriesResponse> get copyWith =>
      __$$_CountriesResponseCopyWithImpl<_$_CountriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountriesResponseToJson(
      this,
    );
  }
}

abstract class _CountriesResponse implements CountriesResponse {
  const factory _CountriesResponse(
      {required final List<CountryResponse>? countries}) = _$_CountriesResponse;

  factory _CountriesResponse.fromJson(Map<String, dynamic> json) =
      _$_CountriesResponse.fromJson;

  @override
  List<CountryResponse>? get countries;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesResponseCopyWith<_$_CountriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

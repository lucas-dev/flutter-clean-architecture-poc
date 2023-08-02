// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) {
  return _CountryResponse.fromJson(json);
}

/// @nodoc
mixin _$CountryResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryResponseCopyWith<CountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryResponseCopyWith<$Res> {
  factory $CountryResponseCopyWith(
          CountryResponse value, $Res Function(CountryResponse) then) =
      _$CountryResponseCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$CountryResponseCopyWithImpl<$Res>
    implements $CountryResponseCopyWith<$Res> {
  _$CountryResponseCopyWithImpl(this._value, this._then);

  final CountryResponse _value;
  // ignore: unused_field
  final $Res Function(CountryResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryResponseCopyWith<$Res>
    implements $CountryResponseCopyWith<$Res> {
  factory _$$_CountryResponseCopyWith(
          _$_CountryResponse value, $Res Function(_$_CountryResponse) then) =
      __$$_CountryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$$_CountryResponseCopyWithImpl<$Res>
    extends _$CountryResponseCopyWithImpl<$Res>
    implements _$$_CountryResponseCopyWith<$Res> {
  __$$_CountryResponseCopyWithImpl(
      _$_CountryResponse _value, $Res Function(_$_CountryResponse) _then)
      : super(_value, (v) => _then(v as _$_CountryResponse));

  @override
  _$_CountryResponse get _value => super._value as _$_CountryResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CountryResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryResponse implements _CountryResponse {
  const _$_CountryResponse({required this.id, required this.name});

  factory _$_CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CountryResponseFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CountryResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CountryResponseCopyWith<_$_CountryResponse> get copyWith =>
      __$$_CountryResponseCopyWithImpl<_$_CountryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryResponseToJson(
      this,
    );
  }
}

abstract class _CountryResponse implements CountryResponse {
  const factory _CountryResponse(
      {required final String id,
      required final String name}) = _$_CountryResponse;

  factory _CountryResponse.fromJson(Map<String, dynamic> json) =
      _$_CountryResponse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CountryResponseCopyWith<_$_CountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

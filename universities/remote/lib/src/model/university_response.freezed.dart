// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityResponse _$UniversityResponseFromJson(Map<String, dynamic> json) {
  return _UniversityResponse.fromJson(json);
}

/// @nodoc
mixin _$UniversityResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityResponseCopyWith<UniversityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityResponseCopyWith<$Res> {
  factory $UniversityResponseCopyWith(
          UniversityResponse value, $Res Function(UniversityResponse) then) =
      _$UniversityResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String city,
      String country,
      String description,
      String status});
}

/// @nodoc
class _$UniversityResponseCopyWithImpl<$Res>
    implements $UniversityResponseCopyWith<$Res> {
  _$UniversityResponseCopyWithImpl(this._value, this._then);

  final UniversityResponse _value;
  // ignore: unused_field
  final $Res Function(UniversityResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? status = freezed,
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
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityResponseCopyWith<$Res>
    implements $UniversityResponseCopyWith<$Res> {
  factory _$$_UniversityResponseCopyWith(_$_UniversityResponse value,
          $Res Function(_$_UniversityResponse) then) =
      __$$_UniversityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String city,
      String country,
      String description,
      String status});
}

/// @nodoc
class __$$_UniversityResponseCopyWithImpl<$Res>
    extends _$UniversityResponseCopyWithImpl<$Res>
    implements _$$_UniversityResponseCopyWith<$Res> {
  __$$_UniversityResponseCopyWithImpl(
      _$_UniversityResponse _value, $Res Function(_$_UniversityResponse) _then)
      : super(_value, (v) => _then(v as _$_UniversityResponse));

  @override
  _$_UniversityResponse get _value => super._value as _$_UniversityResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UniversityResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityResponse implements _UniversityResponse {
  const _$_UniversityResponse(
      {required this.id,
      required this.name,
      required this.city,
      required this.country,
      required this.description,
      required this.status});

  factory _$_UniversityResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityResponseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String country;
  @override
  final String description;
  @override
  final String status;

  @override
  String toString() {
    return 'UniversityResponse(id: $id, name: $name, city: $city, country: $country, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityResponseCopyWith<_$_UniversityResponse> get copyWith =>
      __$$_UniversityResponseCopyWithImpl<_$_UniversityResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityResponseToJson(
      this,
    );
  }
}

abstract class _UniversityResponse implements UniversityResponse {
  const factory _UniversityResponse(
      {required final String id,
      required final String name,
      required final String city,
      required final String country,
      required final String description,
      required final String status}) = _$_UniversityResponse;

  factory _UniversityResponse.fromJson(Map<String, dynamic> json) =
      _$_UniversityResponse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get country;
  @override
  String get description;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityResponseCopyWith<_$_UniversityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

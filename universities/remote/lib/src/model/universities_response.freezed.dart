// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universities_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversitiesResponse _$UniversitiesResponseFromJson(Map<String, dynamic> json) {
  return _UniversitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$UniversitiesResponse {
  List<List<String?>> get aaData => throw _privateConstructorUsedError;
  int get iTotalDisplayRecords => throw _privateConstructorUsedError;
  int get iTotalRecords => throw _privateConstructorUsedError;
  int get sEcho => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversitiesResponseCopyWith<UniversitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesResponseCopyWith<$Res> {
  factory $UniversitiesResponseCopyWith(UniversitiesResponse value,
          $Res Function(UniversitiesResponse) then) =
      _$UniversitiesResponseCopyWithImpl<$Res>;
  $Res call(
      {List<List<String?>> aaData,
      int iTotalDisplayRecords,
      int iTotalRecords,
      int sEcho});
}

/// @nodoc
class _$UniversitiesResponseCopyWithImpl<$Res>
    implements $UniversitiesResponseCopyWith<$Res> {
  _$UniversitiesResponseCopyWithImpl(this._value, this._then);

  final UniversitiesResponse _value;
  // ignore: unused_field
  final $Res Function(UniversitiesResponse) _then;

  @override
  $Res call({
    Object? aaData = freezed,
    Object? iTotalDisplayRecords = freezed,
    Object? iTotalRecords = freezed,
    Object? sEcho = freezed,
  }) {
    return _then(_value.copyWith(
      aaData: aaData == freezed
          ? _value.aaData
          : aaData // ignore: cast_nullable_to_non_nullable
              as List<List<String?>>,
      iTotalDisplayRecords: iTotalDisplayRecords == freezed
          ? _value.iTotalDisplayRecords
          : iTotalDisplayRecords // ignore: cast_nullable_to_non_nullable
              as int,
      iTotalRecords: iTotalRecords == freezed
          ? _value.iTotalRecords
          : iTotalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      sEcho: sEcho == freezed
          ? _value.sEcho
          : sEcho // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversitiesResponseCopyWith<$Res>
    implements $UniversitiesResponseCopyWith<$Res> {
  factory _$$_UniversitiesResponseCopyWith(_$_UniversitiesResponse value,
          $Res Function(_$_UniversitiesResponse) then) =
      __$$_UniversitiesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<List<String?>> aaData,
      int iTotalDisplayRecords,
      int iTotalRecords,
      int sEcho});
}

/// @nodoc
class __$$_UniversitiesResponseCopyWithImpl<$Res>
    extends _$UniversitiesResponseCopyWithImpl<$Res>
    implements _$$_UniversitiesResponseCopyWith<$Res> {
  __$$_UniversitiesResponseCopyWithImpl(_$_UniversitiesResponse _value,
      $Res Function(_$_UniversitiesResponse) _then)
      : super(_value, (v) => _then(v as _$_UniversitiesResponse));

  @override
  _$_UniversitiesResponse get _value => super._value as _$_UniversitiesResponse;

  @override
  $Res call({
    Object? aaData = freezed,
    Object? iTotalDisplayRecords = freezed,
    Object? iTotalRecords = freezed,
    Object? sEcho = freezed,
  }) {
    return _then(_$_UniversitiesResponse(
      aaData: aaData == freezed
          ? _value._aaData
          : aaData // ignore: cast_nullable_to_non_nullable
              as List<List<String?>>,
      iTotalDisplayRecords: iTotalDisplayRecords == freezed
          ? _value.iTotalDisplayRecords
          : iTotalDisplayRecords // ignore: cast_nullable_to_non_nullable
              as int,
      iTotalRecords: iTotalRecords == freezed
          ? _value.iTotalRecords
          : iTotalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      sEcho: sEcho == freezed
          ? _value.sEcho
          : sEcho // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversitiesResponse implements _UniversitiesResponse {
  const _$_UniversitiesResponse(
      {required final List<List<String?>> aaData,
      required this.iTotalDisplayRecords,
      required this.iTotalRecords,
      required this.sEcho})
      : _aaData = aaData;

  factory _$_UniversitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UniversitiesResponseFromJson(json);

  final List<List<String?>> _aaData;
  @override
  List<List<String?>> get aaData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aaData);
  }

  @override
  final int iTotalDisplayRecords;
  @override
  final int iTotalRecords;
  @override
  final int sEcho;

  @override
  String toString() {
    return 'UniversitiesResponse(aaData: $aaData, iTotalDisplayRecords: $iTotalDisplayRecords, iTotalRecords: $iTotalRecords, sEcho: $sEcho)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversitiesResponse &&
            const DeepCollectionEquality().equals(other._aaData, _aaData) &&
            const DeepCollectionEquality()
                .equals(other.iTotalDisplayRecords, iTotalDisplayRecords) &&
            const DeepCollectionEquality()
                .equals(other.iTotalRecords, iTotalRecords) &&
            const DeepCollectionEquality().equals(other.sEcho, sEcho));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aaData),
      const DeepCollectionEquality().hash(iTotalDisplayRecords),
      const DeepCollectionEquality().hash(iTotalRecords),
      const DeepCollectionEquality().hash(sEcho));

  @JsonKey(ignore: true)
  @override
  _$$_UniversitiesResponseCopyWith<_$_UniversitiesResponse> get copyWith =>
      __$$_UniversitiesResponseCopyWithImpl<_$_UniversitiesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversitiesResponseToJson(
      this,
    );
  }
}

abstract class _UniversitiesResponse implements UniversitiesResponse {
  const factory _UniversitiesResponse(
      {required final List<List<String?>> aaData,
      required final int iTotalDisplayRecords,
      required final int iTotalRecords,
      required final int sEcho}) = _$_UniversitiesResponse;

  factory _UniversitiesResponse.fromJson(Map<String, dynamic> json) =
      _$_UniversitiesResponse.fromJson;

  @override
  List<List<String?>> get aaData;
  @override
  int get iTotalDisplayRecords;
  @override
  int get iTotalRecords;
  @override
  int get sEcho;
  @override
  @JsonKey(ignore: true)
  _$$_UniversitiesResponseCopyWith<_$_UniversitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

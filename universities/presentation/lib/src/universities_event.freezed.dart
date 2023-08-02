// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universities_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversitiesEvent {
  String get countryId => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, String countryName) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String countryId, String countryName)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, String countryName)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestUniversities value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestUniversities value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestUniversities value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversitiesEventCopyWith<UniversitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesEventCopyWith<$Res> {
  factory $UniversitiesEventCopyWith(
          UniversitiesEvent value, $Res Function(UniversitiesEvent) then) =
      _$UniversitiesEventCopyWithImpl<$Res>;
  $Res call({String countryId, String countryName});
}

/// @nodoc
class _$UniversitiesEventCopyWithImpl<$Res>
    implements $UniversitiesEventCopyWith<$Res> {
  _$UniversitiesEventCopyWithImpl(this._value, this._then);

  final UniversitiesEvent _value;
  // ignore: unused_field
  final $Res Function(UniversitiesEvent) _then;

  @override
  $Res call({
    Object? countryId = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$RequestUniversitiesCopyWith<$Res>
    implements $UniversitiesEventCopyWith<$Res> {
  factory _$$RequestUniversitiesCopyWith(_$RequestUniversities value,
          $Res Function(_$RequestUniversities) then) =
      __$$RequestUniversitiesCopyWithImpl<$Res>;
  @override
  $Res call({String countryId, String countryName});
}

/// @nodoc
class __$$RequestUniversitiesCopyWithImpl<$Res>
    extends _$UniversitiesEventCopyWithImpl<$Res>
    implements _$$RequestUniversitiesCopyWith<$Res> {
  __$$RequestUniversitiesCopyWithImpl(
      _$RequestUniversities _value, $Res Function(_$RequestUniversities) _then)
      : super(_value, (v) => _then(v as _$RequestUniversities));

  @override
  _$RequestUniversities get _value => super._value as _$RequestUniversities;

  @override
  $Res call({
    Object? countryId = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_$RequestUniversities(
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

class _$RequestUniversities implements RequestUniversities {
  const _$RequestUniversities(this.countryId, this.countryName);

  @override
  final String countryId;
  @override
  final String countryName;

  @override
  String toString() {
    return 'UniversitiesEvent.request(countryId: $countryId, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestUniversities &&
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
  _$$RequestUniversitiesCopyWith<_$RequestUniversities> get copyWith =>
      __$$RequestUniversitiesCopyWithImpl<_$RequestUniversities>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, String countryName) request,
  }) {
    return request(countryId, countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String countryId, String countryName)? request,
  }) {
    return request?.call(countryId, countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, String countryName)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(countryId, countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestUniversities value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestUniversities value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestUniversities value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestUniversities implements UniversitiesEvent {
  const factory RequestUniversities(
      final String countryId, final String countryName) = _$RequestUniversities;

  @override
  String get countryId;
  @override
  String get countryName;
  @override
  @JsonKey(ignore: true)
  _$$RequestUniversitiesCopyWith<_$RequestUniversities> get copyWith =>
      throw _privateConstructorUsedError;
}

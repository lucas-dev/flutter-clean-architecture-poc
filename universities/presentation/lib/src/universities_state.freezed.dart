// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversitiesState {
  ViewStatus<dynamic> get viewStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversitiesStateCopyWith<UniversitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesStateCopyWith<$Res> {
  factory $UniversitiesStateCopyWith(
          UniversitiesState value, $Res Function(UniversitiesState) then) =
      _$UniversitiesStateCopyWithImpl<$Res>;
  $Res call({ViewStatus<dynamic> viewStatus});

  $ViewStatusCopyWith<dynamic, $Res> get viewStatus;
}

/// @nodoc
class _$UniversitiesStateCopyWithImpl<$Res>
    implements $UniversitiesStateCopyWith<$Res> {
  _$UniversitiesStateCopyWithImpl(this._value, this._then);

  final UniversitiesState _value;
  // ignore: unused_field
  final $Res Function(UniversitiesState) _then;

  @override
  $Res call({
    Object? viewStatus = freezed,
  }) {
    return _then(_value.copyWith(
      viewStatus: viewStatus == freezed
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as ViewStatus<dynamic>,
    ));
  }

  @override
  $ViewStatusCopyWith<dynamic, $Res> get viewStatus {
    return $ViewStatusCopyWith<dynamic, $Res>(_value.viewStatus, (value) {
      return _then(_value.copyWith(viewStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_UniversitiesStateCopyWith<$Res>
    implements $UniversitiesStateCopyWith<$Res> {
  factory _$$_UniversitiesStateCopyWith(_$_UniversitiesState value,
          $Res Function(_$_UniversitiesState) then) =
      __$$_UniversitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewStatus<dynamic> viewStatus});

  @override
  $ViewStatusCopyWith<dynamic, $Res> get viewStatus;
}

/// @nodoc
class __$$_UniversitiesStateCopyWithImpl<$Res>
    extends _$UniversitiesStateCopyWithImpl<$Res>
    implements _$$_UniversitiesStateCopyWith<$Res> {
  __$$_UniversitiesStateCopyWithImpl(
      _$_UniversitiesState _value, $Res Function(_$_UniversitiesState) _then)
      : super(_value, (v) => _then(v as _$_UniversitiesState));

  @override
  _$_UniversitiesState get _value => super._value as _$_UniversitiesState;

  @override
  $Res call({
    Object? viewStatus = freezed,
  }) {
    return _then(_$_UniversitiesState(
      viewStatus: viewStatus == freezed
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as ViewStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_UniversitiesState implements _UniversitiesState {
  const _$_UniversitiesState({this.viewStatus = const ViewStatus.idle()});

  @override
  @JsonKey()
  final ViewStatus<dynamic> viewStatus;

  @override
  String toString() {
    return 'UniversitiesState(viewStatus: $viewStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversitiesState &&
            const DeepCollectionEquality()
                .equals(other.viewStatus, viewStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewStatus));

  @JsonKey(ignore: true)
  @override
  _$$_UniversitiesStateCopyWith<_$_UniversitiesState> get copyWith =>
      __$$_UniversitiesStateCopyWithImpl<_$_UniversitiesState>(
          this, _$identity);
}

abstract class _UniversitiesState implements UniversitiesState {
  const factory _UniversitiesState({final ViewStatus<dynamic> viewStatus}) =
      _$_UniversitiesState;

  @override
  ViewStatus<dynamic> get viewStatus;
  @override
  @JsonKey(ignore: true)
  _$$_UniversitiesStateCopyWith<_$_UniversitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

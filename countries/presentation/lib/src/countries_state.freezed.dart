// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countries_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesState {
  ViewStatus<dynamic> get viewStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesStateCopyWith<CountriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesStateCopyWith<$Res> {
  factory $CountriesStateCopyWith(
          CountriesState value, $Res Function(CountriesState) then) =
      _$CountriesStateCopyWithImpl<$Res>;
  $Res call({ViewStatus<dynamic> viewStatus});

  $ViewStatusCopyWith<dynamic, $Res> get viewStatus;
}

/// @nodoc
class _$CountriesStateCopyWithImpl<$Res>
    implements $CountriesStateCopyWith<$Res> {
  _$CountriesStateCopyWithImpl(this._value, this._then);

  final CountriesState _value;
  // ignore: unused_field
  final $Res Function(CountriesState) _then;

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
abstract class _$$_CountriesStateCopyWith<$Res>
    implements $CountriesStateCopyWith<$Res> {
  factory _$$_CountriesStateCopyWith(
          _$_CountriesState value, $Res Function(_$_CountriesState) then) =
      __$$_CountriesStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewStatus<dynamic> viewStatus});

  @override
  $ViewStatusCopyWith<dynamic, $Res> get viewStatus;
}

/// @nodoc
class __$$_CountriesStateCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res>
    implements _$$_CountriesStateCopyWith<$Res> {
  __$$_CountriesStateCopyWithImpl(
      _$_CountriesState _value, $Res Function(_$_CountriesState) _then)
      : super(_value, (v) => _then(v as _$_CountriesState));

  @override
  _$_CountriesState get _value => super._value as _$_CountriesState;

  @override
  $Res call({
    Object? viewStatus = freezed,
  }) {
    return _then(_$_CountriesState(
      viewStatus: viewStatus == freezed
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as ViewStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_CountriesState implements _CountriesState {
  const _$_CountriesState({this.viewStatus = const ViewStatus.idle()});

  @override
  @JsonKey()
  final ViewStatus<dynamic> viewStatus;

  @override
  String toString() {
    return 'CountriesState(viewStatus: $viewStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountriesState &&
            const DeepCollectionEquality()
                .equals(other.viewStatus, viewStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewStatus));

  @JsonKey(ignore: true)
  @override
  _$$_CountriesStateCopyWith<_$_CountriesState> get copyWith =>
      __$$_CountriesStateCopyWithImpl<_$_CountriesState>(this, _$identity);
}

abstract class _CountriesState implements CountriesState {
  const factory _CountriesState({final ViewStatus<dynamic> viewStatus}) =
      _$_CountriesState;

  @override
  ViewStatus<dynamic> get viewStatus;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesStateCopyWith<_$_CountriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

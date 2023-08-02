// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String message) error,
    required TResult Function(LoadType loadType) loading,
    required TResult Function(T data, LoadType loadType) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Loaded<T> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStatusCopyWith<T, $Res> {
  factory $ViewStatusCopyWith(
          ViewStatus<T> value, $Res Function(ViewStatus<T>) then) =
      _$ViewStatusCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ViewStatusCopyWithImpl<T, $Res>
    implements $ViewStatusCopyWith<T, $Res> {
  _$ViewStatusCopyWithImpl(this._value, this._then);

  final ViewStatus<T> _value;
  // ignore: unused_field
  final $Res Function(ViewStatus<T>) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<T, $Res> {
  factory _$$IdleCopyWith(_$Idle<T> value, $Res Function(_$Idle<T>) then) =
      __$$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<T, $Res> extends _$ViewStatusCopyWithImpl<T, $Res>
    implements _$$IdleCopyWith<T, $Res> {
  __$$IdleCopyWithImpl(_$Idle<T> _value, $Res Function(_$Idle<T>) _then)
      : super(_value, (v) => _then(v as _$Idle<T>));

  @override
  _$Idle<T> get _value => super._value as _$Idle<T>;
}

/// @nodoc

class _$Idle<T> implements Idle<T> {
  const _$Idle();

  @override
  String toString() {
    return 'ViewStatus<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String message) error,
    required TResult Function(LoadType loadType) loading,
    required TResult Function(T data, LoadType loadType) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Loaded<T> value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements ViewStatus<T> {
  const factory Idle() = _$Idle<T>;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, $Res> {
  factory _$$ErrorCopyWith(_$Error<T> value, $Res Function(_$Error<T>) then) =
      __$$ErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, $Res> extends _$ViewStatusCopyWithImpl<T, $Res>
    implements _$$ErrorCopyWith<T, $Res> {
  __$$ErrorCopyWithImpl(_$Error<T> _value, $Res Function(_$Error<T>) _then)
      : super(_value, (v) => _then(v as _$Error<T>));

  @override
  _$Error<T> get _value => super._value as _$Error<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error<T> implements Error<T> {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ViewStatus<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      __$$ErrorCopyWithImpl<T, _$Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String message) error,
    required TResult Function(LoadType loadType) loading,
    required TResult Function(T data, LoadType loadType) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Loaded<T> value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements ViewStatus<T> {
  const factory Error(final String message) = _$Error<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
  $Res call({LoadType loadType});
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res> extends _$ViewStatusCopyWithImpl<T, $Res>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, (v) => _then(v as _$Loading<T>));

  @override
  _$Loading<T> get _value => super._value as _$Loading<T>;

  @override
  $Res call({
    Object? loadType = freezed,
  }) {
    return _then(_$Loading<T>(
      loadType == freezed
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as LoadType,
    ));
  }
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading(this.loadType);

  @override
  final LoadType loadType;

  @override
  String toString() {
    return 'ViewStatus<$T>.loading(loadType: $loadType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading<T> &&
            const DeepCollectionEquality().equals(other.loadType, loadType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadType));

  @JsonKey(ignore: true)
  @override
  _$$LoadingCopyWith<T, _$Loading<T>> get copyWith =>
      __$$LoadingCopyWithImpl<T, _$Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String message) error,
    required TResult Function(LoadType loadType) loading,
    required TResult Function(T data, LoadType loadType) loaded,
  }) {
    return loading(loadType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
  }) {
    return loading?.call(loadType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(loadType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Loaded<T> value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ViewStatus<T> {
  const factory Loading(final LoadType loadType) = _$Loading<T>;

  LoadType get loadType;
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<T, _$Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<T, $Res> {
  factory _$$LoadedCopyWith(
          _$Loaded<T> value, $Res Function(_$Loaded<T>) then) =
      __$$LoadedCopyWithImpl<T, $Res>;
  $Res call({T data, LoadType loadType});
}

/// @nodoc
class __$$LoadedCopyWithImpl<T, $Res> extends _$ViewStatusCopyWithImpl<T, $Res>
    implements _$$LoadedCopyWith<T, $Res> {
  __$$LoadedCopyWithImpl(_$Loaded<T> _value, $Res Function(_$Loaded<T>) _then)
      : super(_value, (v) => _then(v as _$Loaded<T>));

  @override
  _$Loaded<T> get _value => super._value as _$Loaded<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? loadType = freezed,
  }) {
    return _then(_$Loaded<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      loadType == freezed
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as LoadType,
    ));
  }
}

/// @nodoc

class _$Loaded<T> implements Loaded<T> {
  const _$Loaded(this.data, this.loadType);

  @override
  final T data;
  @override
  final LoadType loadType;

  @override
  String toString() {
    return 'ViewStatus<$T>.loaded(data: $data, loadType: $loadType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.loadType, loadType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(loadType));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<T, _$Loaded<T>> get copyWith =>
      __$$LoadedCopyWithImpl<T, _$Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String message) error,
    required TResult Function(LoadType loadType) loading,
    required TResult Function(T data, LoadType loadType) loaded,
  }) {
    return loaded(data, loadType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
  }) {
    return loaded?.call(data, loadType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String message)? error,
    TResult Function(LoadType loadType)? loading,
    TResult Function(T data, LoadType loadType)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, loadType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Loaded<T> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded<T> implements ViewStatus<T> {
  const factory Loaded(final T data, final LoadType loadType) = _$Loaded<T>;

  T get data;
  LoadType get loadType;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<T, _$Loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

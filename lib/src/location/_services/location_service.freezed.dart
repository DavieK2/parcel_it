// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationServiceTypeTearOff {
  const _$LocationServiceTypeTearOff();

  _CurrentLocation currentLocation() {
    return const _CurrentLocation();
  }

  _StreamLocation streamLocation() {
    return const _StreamLocation();
  }
}

/// @nodoc
const $LocationServiceType = _$LocationServiceTypeTearOff();

/// @nodoc
mixin _$LocationServiceType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function() streamLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_StreamLocation value) streamLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationServiceTypeCopyWith<$Res> {
  factory $LocationServiceTypeCopyWith(
          LocationServiceType value, $Res Function(LocationServiceType) then) =
      _$LocationServiceTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationServiceTypeCopyWithImpl<$Res>
    implements $LocationServiceTypeCopyWith<$Res> {
  _$LocationServiceTypeCopyWithImpl(this._value, this._then);

  final LocationServiceType _value;
  // ignore: unused_field
  final $Res Function(LocationServiceType) _then;
}

/// @nodoc
abstract class _$CurrentLocationCopyWith<$Res> {
  factory _$CurrentLocationCopyWith(
          _CurrentLocation value, $Res Function(_CurrentLocation) then) =
      __$CurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$CurrentLocationCopyWithImpl<$Res>
    extends _$LocationServiceTypeCopyWithImpl<$Res>
    implements _$CurrentLocationCopyWith<$Res> {
  __$CurrentLocationCopyWithImpl(
      _CurrentLocation _value, $Res Function(_CurrentLocation) _then)
      : super(_value, (v) => _then(v as _CurrentLocation));

  @override
  _CurrentLocation get _value => super._value as _CurrentLocation;
}

/// @nodoc

class _$_CurrentLocation implements _CurrentLocation {
  const _$_CurrentLocation();

  @override
  String toString() {
    return 'LocationServiceType.currentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function() streamLocation,
  }) {
    return currentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
  }) {
    return currentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_StreamLocation value) streamLocation,
  }) {
    return currentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
  }) {
    return currentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocation implements LocationServiceType {
  const factory _CurrentLocation() = _$_CurrentLocation;
}

/// @nodoc
abstract class _$StreamLocationCopyWith<$Res> {
  factory _$StreamLocationCopyWith(
          _StreamLocation value, $Res Function(_StreamLocation) then) =
      __$StreamLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$StreamLocationCopyWithImpl<$Res>
    extends _$LocationServiceTypeCopyWithImpl<$Res>
    implements _$StreamLocationCopyWith<$Res> {
  __$StreamLocationCopyWithImpl(
      _StreamLocation _value, $Res Function(_StreamLocation) _then)
      : super(_value, (v) => _then(v as _StreamLocation));

  @override
  _StreamLocation get _value => super._value as _StreamLocation;
}

/// @nodoc

class _$_StreamLocation implements _StreamLocation {
  const _$_StreamLocation();

  @override
  String toString() {
    return 'LocationServiceType.streamLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StreamLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocation,
    required TResult Function() streamLocation,
  }) {
    return streamLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
  }) {
    return streamLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocation,
    TResult Function()? streamLocation,
    required TResult orElse(),
  }) {
    if (streamLocation != null) {
      return streamLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_StreamLocation value) streamLocation,
  }) {
    return streamLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
  }) {
    return streamLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_StreamLocation value)? streamLocation,
    required TResult orElse(),
  }) {
    if (streamLocation != null) {
      return streamLocation(this);
    }
    return orElse();
  }
}

abstract class _StreamLocation implements LocationServiceType {
  const factory _StreamLocation() = _$_StreamLocation;
}

/// @nodoc
class _$LocationErrorTearOff {
  const _$LocationErrorTearOff();

  _LocationError error(String message) {
    return _LocationError(
      message,
    );
  }
}

/// @nodoc
const $LocationError = _$LocationErrorTearOff();

/// @nodoc
mixin _$LocationError {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationErrorCopyWith<LocationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationErrorCopyWith<$Res> {
  factory $LocationErrorCopyWith(
          LocationError value, $Res Function(LocationError) then) =
      _$LocationErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LocationErrorCopyWithImpl<$Res>
    implements $LocationErrorCopyWith<$Res> {
  _$LocationErrorCopyWithImpl(this._value, this._then);

  final LocationError _value;
  // ignore: unused_field
  final $Res Function(LocationError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationErrorCopyWith<$Res>
    implements $LocationErrorCopyWith<$Res> {
  factory _$LocationErrorCopyWith(
          _LocationError value, $Res Function(_LocationError) then) =
      __$LocationErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LocationErrorCopyWithImpl<$Res>
    extends _$LocationErrorCopyWithImpl<$Res>
    implements _$LocationErrorCopyWith<$Res> {
  __$LocationErrorCopyWithImpl(
      _LocationError _value, $Res Function(_LocationError) _then)
      : super(_value, (v) => _then(v as _LocationError));

  @override
  _LocationError get _value => super._value as _LocationError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LocationError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationError implements _LocationError {
  const _$_LocationError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationError.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LocationErrorCopyWith<_LocationError> get copyWith =>
      __$LocationErrorCopyWithImpl<_LocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
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
    required TResult Function(_LocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LocationError implements LocationError {
  const factory _LocationError(String message) = _$_LocationError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$LocationErrorCopyWith<_LocationError> get copyWith =>
      throw _privateConstructorUsedError;
}

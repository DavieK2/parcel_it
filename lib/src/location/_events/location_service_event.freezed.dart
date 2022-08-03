// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_service_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationServiceEventTearOff {
  const _$LocationServiceEventTearOff();

  _GetUserCurrentLocation getUserCurrentLocation(
      {required LocationServiceType type,
      required dynamic Function(Position?) onUserLocation,
      required dynamic Function(LocationError) onError}) {
    return _GetUserCurrentLocation(
      type: type,
      onUserLocation: onUserLocation,
      onError: onError,
    );
  }
}

/// @nodoc
const $LocationServiceEvent = _$LocationServiceEventTearOff();

/// @nodoc
mixin _$LocationServiceEvent {
  LocationServiceType get type => throw _privateConstructorUsedError;
  dynamic Function(Position?) get onUserLocation =>
      throw _privateConstructorUsedError;
  dynamic Function(LocationError) get onError =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)
        getUserCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)?
        getUserCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)?
        getUserCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCurrentLocation value)
        getUserCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUserCurrentLocation value)? getUserCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCurrentLocation value)? getUserCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationServiceEventCopyWith<LocationServiceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationServiceEventCopyWith<$Res> {
  factory $LocationServiceEventCopyWith(LocationServiceEvent value,
          $Res Function(LocationServiceEvent) then) =
      _$LocationServiceEventCopyWithImpl<$Res>;
  $Res call(
      {LocationServiceType type,
      dynamic Function(Position?) onUserLocation,
      dynamic Function(LocationError) onError});

  $LocationServiceTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$LocationServiceEventCopyWithImpl<$Res>
    implements $LocationServiceEventCopyWith<$Res> {
  _$LocationServiceEventCopyWithImpl(this._value, this._then);

  final LocationServiceEvent _value;
  // ignore: unused_field
  final $Res Function(LocationServiceEvent) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? onUserLocation = freezed,
    Object? onError = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocationServiceType,
      onUserLocation: onUserLocation == freezed
          ? _value.onUserLocation
          : onUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Position?),
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(LocationError),
    ));
  }

  @override
  $LocationServiceTypeCopyWith<$Res> get type {
    return $LocationServiceTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$GetUserCurrentLocationCopyWith<$Res>
    implements $LocationServiceEventCopyWith<$Res> {
  factory _$GetUserCurrentLocationCopyWith(_GetUserCurrentLocation value,
          $Res Function(_GetUserCurrentLocation) then) =
      __$GetUserCurrentLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocationServiceType type,
      dynamic Function(Position?) onUserLocation,
      dynamic Function(LocationError) onError});

  @override
  $LocationServiceTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$GetUserCurrentLocationCopyWithImpl<$Res>
    extends _$LocationServiceEventCopyWithImpl<$Res>
    implements _$GetUserCurrentLocationCopyWith<$Res> {
  __$GetUserCurrentLocationCopyWithImpl(_GetUserCurrentLocation _value,
      $Res Function(_GetUserCurrentLocation) _then)
      : super(_value, (v) => _then(v as _GetUserCurrentLocation));

  @override
  _GetUserCurrentLocation get _value => super._value as _GetUserCurrentLocation;

  @override
  $Res call({
    Object? type = freezed,
    Object? onUserLocation = freezed,
    Object? onError = freezed,
  }) {
    return _then(_GetUserCurrentLocation(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocationServiceType,
      onUserLocation: onUserLocation == freezed
          ? _value.onUserLocation
          : onUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Position?),
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(LocationError),
    ));
  }
}

/// @nodoc

class _$_GetUserCurrentLocation implements _GetUserCurrentLocation {
  const _$_GetUserCurrentLocation(
      {required this.type,
      required this.onUserLocation,
      required this.onError});

  @override
  final LocationServiceType type;
  @override
  final dynamic Function(Position?) onUserLocation;
  @override
  final dynamic Function(LocationError) onError;

  @override
  String toString() {
    return 'LocationServiceEvent.getUserCurrentLocation(type: $type, onUserLocation: $onUserLocation, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUserCurrentLocation &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.onUserLocation, onUserLocation) ||
                other.onUserLocation == onUserLocation) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(type), onUserLocation, onError);

  @JsonKey(ignore: true)
  @override
  _$GetUserCurrentLocationCopyWith<_GetUserCurrentLocation> get copyWith =>
      __$GetUserCurrentLocationCopyWithImpl<_GetUserCurrentLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)
        getUserCurrentLocation,
  }) {
    return getUserCurrentLocation(type, onUserLocation, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)?
        getUserCurrentLocation,
  }) {
    return getUserCurrentLocation?.call(type, onUserLocation, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LocationServiceType type,
            dynamic Function(Position?) onUserLocation,
            dynamic Function(LocationError) onError)?
        getUserCurrentLocation,
    required TResult orElse(),
  }) {
    if (getUserCurrentLocation != null) {
      return getUserCurrentLocation(type, onUserLocation, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCurrentLocation value)
        getUserCurrentLocation,
  }) {
    return getUserCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUserCurrentLocation value)? getUserCurrentLocation,
  }) {
    return getUserCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCurrentLocation value)? getUserCurrentLocation,
    required TResult orElse(),
  }) {
    if (getUserCurrentLocation != null) {
      return getUserCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetUserCurrentLocation implements LocationServiceEvent {
  const factory _GetUserCurrentLocation(
          {required LocationServiceType type,
          required dynamic Function(Position?) onUserLocation,
          required dynamic Function(LocationError) onError}) =
      _$_GetUserCurrentLocation;

  @override
  LocationServiceType get type;
  @override
  dynamic Function(Position?) get onUserLocation;
  @override
  dynamic Function(LocationError) get onError;
  @override
  @JsonKey(ignore: true)
  _$GetUserCurrentLocationCopyWith<_GetUserCurrentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

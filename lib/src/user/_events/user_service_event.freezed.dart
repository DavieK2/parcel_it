// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_service_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserServiceEventTearOff {
  const _$UserServiceEventTearOff();

  _UpdateUserProfile updateUserProfile(
      {required UserServiceProvider userServiceProvider,
      required UserModel user}) {
    return _UpdateUserProfile(
      userServiceProvider: userServiceProvider,
      user: user,
    );
  }
}

/// @nodoc
const $UserServiceEvent = _$UserServiceEventTearOff();

/// @nodoc
mixin _$UserServiceEvent {
  UserServiceProvider get userServiceProvider =>
      throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserServiceProvider userServiceProvider, UserModel user)
        updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserServiceProvider userServiceProvider, UserModel user)?
        updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserServiceProvider userServiceProvider, UserModel user)?
        updateUserProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfile value) updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserServiceEventCopyWith<UserServiceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserServiceEventCopyWith<$Res> {
  factory $UserServiceEventCopyWith(
          UserServiceEvent value, $Res Function(UserServiceEvent) then) =
      _$UserServiceEventCopyWithImpl<$Res>;
  $Res call({UserServiceProvider userServiceProvider, UserModel user});

  $UserServiceProviderCopyWith<$Res> get userServiceProvider;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserServiceEventCopyWithImpl<$Res>
    implements $UserServiceEventCopyWith<$Res> {
  _$UserServiceEventCopyWithImpl(this._value, this._then);

  final UserServiceEvent _value;
  // ignore: unused_field
  final $Res Function(UserServiceEvent) _then;

  @override
  $Res call({
    Object? userServiceProvider = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      userServiceProvider: userServiceProvider == freezed
          ? _value.userServiceProvider
          : userServiceProvider // ignore: cast_nullable_to_non_nullable
              as UserServiceProvider,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserServiceProviderCopyWith<$Res> get userServiceProvider {
    return $UserServiceProviderCopyWith<$Res>(_value.userServiceProvider,
        (value) {
      return _then(_value.copyWith(userServiceProvider: value));
    });
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateUserProfileCopyWith<$Res>
    implements $UserServiceEventCopyWith<$Res> {
  factory _$UpdateUserProfileCopyWith(
          _UpdateUserProfile value, $Res Function(_UpdateUserProfile) then) =
      __$UpdateUserProfileCopyWithImpl<$Res>;
  @override
  $Res call({UserServiceProvider userServiceProvider, UserModel user});

  @override
  $UserServiceProviderCopyWith<$Res> get userServiceProvider;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateUserProfileCopyWithImpl<$Res>
    extends _$UserServiceEventCopyWithImpl<$Res>
    implements _$UpdateUserProfileCopyWith<$Res> {
  __$UpdateUserProfileCopyWithImpl(
      _UpdateUserProfile _value, $Res Function(_UpdateUserProfile) _then)
      : super(_value, (v) => _then(v as _UpdateUserProfile));

  @override
  _UpdateUserProfile get _value => super._value as _UpdateUserProfile;

  @override
  $Res call({
    Object? userServiceProvider = freezed,
    Object? user = freezed,
  }) {
    return _then(_UpdateUserProfile(
      userServiceProvider: userServiceProvider == freezed
          ? _value.userServiceProvider
          : userServiceProvider // ignore: cast_nullable_to_non_nullable
              as UserServiceProvider,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_UpdateUserProfile implements _UpdateUserProfile {
  const _$_UpdateUserProfile(
      {required this.userServiceProvider, required this.user});

  @override
  final UserServiceProvider userServiceProvider;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserServiceEvent.updateUserProfile(userServiceProvider: $userServiceProvider, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfile &&
            const DeepCollectionEquality()
                .equals(other.userServiceProvider, userServiceProvider) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userServiceProvider),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UpdateUserProfileCopyWith<_UpdateUserProfile> get copyWith =>
      __$UpdateUserProfileCopyWithImpl<_UpdateUserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserServiceProvider userServiceProvider, UserModel user)
        updateUserProfile,
  }) {
    return updateUserProfile(userServiceProvider, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserServiceProvider userServiceProvider, UserModel user)?
        updateUserProfile,
  }) {
    return updateUserProfile?.call(userServiceProvider, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserServiceProvider userServiceProvider, UserModel user)?
        updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(userServiceProvider, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfile value) updateUserProfile,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfile implements UserServiceEvent {
  const factory _UpdateUserProfile(
      {required UserServiceProvider userServiceProvider,
      required UserModel user}) = _$_UpdateUserProfile;

  @override
  UserServiceProvider get userServiceProvider;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserProfileCopyWith<_UpdateUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserServiceEventResponseTearOff {
  const _$UserServiceEventResponseTearOff();

  _UpdateUserProfileUpdated userProfileUpdated() {
    return const _UpdateUserProfileUpdated();
  }

  _UpdateUserProfileUpdateFailed userProfileUpdateFailed(
      {required String message}) {
    return _UpdateUserProfileUpdateFailed(
      message: message,
    );
  }
}

/// @nodoc
const $UserServiceEventResponse = _$UserServiceEventResponseTearOff();

/// @nodoc
mixin _$UserServiceEventResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userProfileUpdated,
    required TResult Function(String message) userProfileUpdateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfileUpdated value)
        userProfileUpdated,
    required TResult Function(_UpdateUserProfileUpdateFailed value)
        userProfileUpdateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserServiceEventResponseCopyWith<$Res> {
  factory $UserServiceEventResponseCopyWith(UserServiceEventResponse value,
          $Res Function(UserServiceEventResponse) then) =
      _$UserServiceEventResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserServiceEventResponseCopyWithImpl<$Res>
    implements $UserServiceEventResponseCopyWith<$Res> {
  _$UserServiceEventResponseCopyWithImpl(this._value, this._then);

  final UserServiceEventResponse _value;
  // ignore: unused_field
  final $Res Function(UserServiceEventResponse) _then;
}

/// @nodoc
abstract class _$UpdateUserProfileUpdatedCopyWith<$Res> {
  factory _$UpdateUserProfileUpdatedCopyWith(_UpdateUserProfileUpdated value,
          $Res Function(_UpdateUserProfileUpdated) then) =
      __$UpdateUserProfileUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateUserProfileUpdatedCopyWithImpl<$Res>
    extends _$UserServiceEventResponseCopyWithImpl<$Res>
    implements _$UpdateUserProfileUpdatedCopyWith<$Res> {
  __$UpdateUserProfileUpdatedCopyWithImpl(_UpdateUserProfileUpdated _value,
      $Res Function(_UpdateUserProfileUpdated) _then)
      : super(_value, (v) => _then(v as _UpdateUserProfileUpdated));

  @override
  _UpdateUserProfileUpdated get _value =>
      super._value as _UpdateUserProfileUpdated;
}

/// @nodoc

class _$_UpdateUserProfileUpdated implements _UpdateUserProfileUpdated {
  const _$_UpdateUserProfileUpdated();

  @override
  String toString() {
    return 'UserServiceEventResponse.userProfileUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfileUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userProfileUpdated,
    required TResult Function(String message) userProfileUpdateFailed,
  }) {
    return userProfileUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
  }) {
    return userProfileUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
    required TResult orElse(),
  }) {
    if (userProfileUpdated != null) {
      return userProfileUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfileUpdated value)
        userProfileUpdated,
    required TResult Function(_UpdateUserProfileUpdateFailed value)
        userProfileUpdateFailed,
  }) {
    return userProfileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
  }) {
    return userProfileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
    required TResult orElse(),
  }) {
    if (userProfileUpdated != null) {
      return userProfileUpdated(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfileUpdated implements UserServiceEventResponse {
  const factory _UpdateUserProfileUpdated() = _$_UpdateUserProfileUpdated;
}

/// @nodoc
abstract class _$UpdateUserProfileUpdateFailedCopyWith<$Res> {
  factory _$UpdateUserProfileUpdateFailedCopyWith(
          _UpdateUserProfileUpdateFailed value,
          $Res Function(_UpdateUserProfileUpdateFailed) then) =
      __$UpdateUserProfileUpdateFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$UpdateUserProfileUpdateFailedCopyWithImpl<$Res>
    extends _$UserServiceEventResponseCopyWithImpl<$Res>
    implements _$UpdateUserProfileUpdateFailedCopyWith<$Res> {
  __$UpdateUserProfileUpdateFailedCopyWithImpl(
      _UpdateUserProfileUpdateFailed _value,
      $Res Function(_UpdateUserProfileUpdateFailed) _then)
      : super(_value, (v) => _then(v as _UpdateUserProfileUpdateFailed));

  @override
  _UpdateUserProfileUpdateFailed get _value =>
      super._value as _UpdateUserProfileUpdateFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UpdateUserProfileUpdateFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserProfileUpdateFailed
    implements _UpdateUserProfileUpdateFailed {
  const _$_UpdateUserProfileUpdateFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserServiceEventResponse.userProfileUpdateFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfileUpdateFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UpdateUserProfileUpdateFailedCopyWith<_UpdateUserProfileUpdateFailed>
      get copyWith => __$UpdateUserProfileUpdateFailedCopyWithImpl<
          _UpdateUserProfileUpdateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userProfileUpdated,
    required TResult Function(String message) userProfileUpdateFailed,
  }) {
    return userProfileUpdateFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
  }) {
    return userProfileUpdateFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userProfileUpdated,
    TResult Function(String message)? userProfileUpdateFailed,
    required TResult orElse(),
  }) {
    if (userProfileUpdateFailed != null) {
      return userProfileUpdateFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfileUpdated value)
        userProfileUpdated,
    required TResult Function(_UpdateUserProfileUpdateFailed value)
        userProfileUpdateFailed,
  }) {
    return userProfileUpdateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
  }) {
    return userProfileUpdateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfileUpdated value)? userProfileUpdated,
    TResult Function(_UpdateUserProfileUpdateFailed value)?
        userProfileUpdateFailed,
    required TResult orElse(),
  }) {
    if (userProfileUpdateFailed != null) {
      return userProfileUpdateFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfileUpdateFailed
    implements UserServiceEventResponse {
  const factory _UpdateUserProfileUpdateFailed({required String message}) =
      _$_UpdateUserProfileUpdateFailed;

  String get message;
  @JsonKey(ignore: true)
  _$UpdateUserProfileUpdateFailedCopyWith<_UpdateUserProfileUpdateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

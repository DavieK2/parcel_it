// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firestore_user_service_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirestoreUserServiceEventTearOff {
  const _$FirestoreUserServiceEventTearOff();

  _UpdateUserProfile updateUserProfile({required UserModel user}) {
    return _UpdateUserProfile(
      user: user,
    );
  }
}

/// @nodoc
const $FirestoreUserServiceEvent = _$FirestoreUserServiceEventTearOff();

/// @nodoc
mixin _$FirestoreUserServiceEvent {
  UserModel get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? updateUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? updateUserProfile,
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
  $FirestoreUserServiceEventCopyWith<FirestoreUserServiceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserServiceEventCopyWith<$Res> {
  factory $FirestoreUserServiceEventCopyWith(FirestoreUserServiceEvent value,
          $Res Function(FirestoreUserServiceEvent) then) =
      _$FirestoreUserServiceEventCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$FirestoreUserServiceEventCopyWithImpl<$Res>
    implements $FirestoreUserServiceEventCopyWith<$Res> {
  _$FirestoreUserServiceEventCopyWithImpl(this._value, this._then);

  final FirestoreUserServiceEvent _value;
  // ignore: unused_field
  final $Res Function(FirestoreUserServiceEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
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
    implements $FirestoreUserServiceEventCopyWith<$Res> {
  factory _$UpdateUserProfileCopyWith(
          _UpdateUserProfile value, $Res Function(_UpdateUserProfile) then) =
      __$UpdateUserProfileCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateUserProfileCopyWithImpl<$Res>
    extends _$FirestoreUserServiceEventCopyWithImpl<$Res>
    implements _$UpdateUserProfileCopyWith<$Res> {
  __$UpdateUserProfileCopyWithImpl(
      _UpdateUserProfile _value, $Res Function(_UpdateUserProfile) _then)
      : super(_value, (v) => _then(v as _UpdateUserProfile));

  @override
  _UpdateUserProfile get _value => super._value as _UpdateUserProfile;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateUserProfile(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_UpdateUserProfile implements _UpdateUserProfile {
  const _$_UpdateUserProfile({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'FirestoreUserServiceEvent.updateUserProfile(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfile &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UpdateUserProfileCopyWith<_UpdateUserProfile> get copyWith =>
      __$UpdateUserProfileCopyWithImpl<_UpdateUserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) updateUserProfile,
  }) {
    return updateUserProfile(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? updateUserProfile,
  }) {
    return updateUserProfile?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(user);
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

abstract class _UpdateUserProfile implements FirestoreUserServiceEvent {
  const factory _UpdateUserProfile({required UserModel user}) =
      _$_UpdateUserProfile;

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserProfileCopyWith<_UpdateUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

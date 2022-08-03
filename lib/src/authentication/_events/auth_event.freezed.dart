// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventsTearOff {
  const _$AuthEventsTearOff();

  _StoreUserToLocalStorage storeUserToLocalStorage(UserModel user) {
    return _StoreUserToLocalStorage(
      user,
    );
  }

  _GetUserCredentials getUserCredentials(
      {required VoidCallback onNoUserRecordFound,
      required VoidCallback onUserHasNotCompletedProfileRegistration,
      required VoidCallback onUserCredentialsReceived,
      required VoidCallback onUserHasNotBeenOnboarded}) {
    return _GetUserCredentials(
      onNoUserRecordFound: onNoUserRecordFound,
      onUserHasNotCompletedProfileRegistration:
          onUserHasNotCompletedProfileRegistration,
      onUserCredentialsReceived: onUserCredentialsReceived,
      onUserHasNotBeenOnboarded: onUserHasNotBeenOnboarded,
    );
  }

  _UserHasLoggedOut userHasLoggedOut() {
    return const _UserHasLoggedOut();
  }

  _VerifyPhoneNumber verifyPhoneNumber(
      {required String phoneNumber,
      required AuthServiceProvider authServiceProvider,
      required dynamic Function(String) onVerificationCodeSent,
      required dynamic Function(String) onVerificationFailed,
      required dynamic Function(PhoneAuthCredential) onVerificationCompleted}) {
    return _VerifyPhoneNumber(
      phoneNumber: phoneNumber,
      authServiceProvider: authServiceProvider,
      onVerificationCodeSent: onVerificationCodeSent,
      onVerificationFailed: onVerificationFailed,
      onVerificationCompleted: onVerificationCompleted,
    );
  }

  _OTPConfirmation confirmOTP(
      {required PhoneAuthCredential phoneAuthCredential,
      required AuthServiceProvider authServiceProvider,
      required dynamic Function(String) onInvalidOTP,
      required VoidCallback onVerificationCompleted}) {
    return _OTPConfirmation(
      phoneAuthCredential: phoneAuthCredential,
      authServiceProvider: authServiceProvider,
      onInvalidOTP: onInvalidOTP,
      onVerificationCompleted: onVerificationCompleted,
    );
  }

  _SignOut signOut(
      {required AuthServiceProvider authServiceProvider,
      required VoidCallback onSignOut}) {
    return _SignOut(
      authServiceProvider: authServiceProvider,
      onSignOut: onSignOut,
    );
  }

  _VerificationCodeSent verificationCodeSent({required String verificationId}) {
    return _VerificationCodeSent(
      verificationId: verificationId,
    );
  }

  _VerificationAutoCompleted verificationAutoCompleted(
      {required PhoneAuthCredential phoneAuthCredential}) {
    return _VerificationAutoCompleted(
      phoneAuthCredential: phoneAuthCredential,
    );
  }

  _VerificationFailed verificationFailed({required String message}) {
    return _VerificationFailed(
      message: message,
    );
  }
}

/// @nodoc
const $AuthEvents = _$AuthEventsTearOff();

/// @nodoc
mixin _$AuthEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventsCopyWith<$Res> {
  factory $AuthEventsCopyWith(
          AuthEvents value, $Res Function(AuthEvents) then) =
      _$AuthEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventsCopyWithImpl<$Res> implements $AuthEventsCopyWith<$Res> {
  _$AuthEventsCopyWithImpl(this._value, this._then);

  final AuthEvents _value;
  // ignore: unused_field
  final $Res Function(AuthEvents) _then;
}

/// @nodoc
abstract class _$StoreUserToLocalStorageCopyWith<$Res> {
  factory _$StoreUserToLocalStorageCopyWith(_StoreUserToLocalStorage value,
          $Res Function(_StoreUserToLocalStorage) then) =
      __$StoreUserToLocalStorageCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$StoreUserToLocalStorageCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$StoreUserToLocalStorageCopyWith<$Res> {
  __$StoreUserToLocalStorageCopyWithImpl(_StoreUserToLocalStorage _value,
      $Res Function(_StoreUserToLocalStorage) _then)
      : super(_value, (v) => _then(v as _StoreUserToLocalStorage));

  @override
  _StoreUserToLocalStorage get _value =>
      super._value as _StoreUserToLocalStorage;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_StoreUserToLocalStorage(
      user == freezed
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

class _$_StoreUserToLocalStorage implements _StoreUserToLocalStorage {
  const _$_StoreUserToLocalStorage(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvents.storeUserToLocalStorage(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreUserToLocalStorage &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$StoreUserToLocalStorageCopyWith<_StoreUserToLocalStorage> get copyWith =>
      __$StoreUserToLocalStorageCopyWithImpl<_StoreUserToLocalStorage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return storeUserToLocalStorage(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return storeUserToLocalStorage?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (storeUserToLocalStorage != null) {
      return storeUserToLocalStorage(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return storeUserToLocalStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return storeUserToLocalStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (storeUserToLocalStorage != null) {
      return storeUserToLocalStorage(this);
    }
    return orElse();
  }
}

abstract class _StoreUserToLocalStorage implements AuthEvents {
  const factory _StoreUserToLocalStorage(UserModel user) =
      _$_StoreUserToLocalStorage;

  UserModel get user;
  @JsonKey(ignore: true)
  _$StoreUserToLocalStorageCopyWith<_StoreUserToLocalStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserCredentialsCopyWith<$Res> {
  factory _$GetUserCredentialsCopyWith(
          _GetUserCredentials value, $Res Function(_GetUserCredentials) then) =
      __$GetUserCredentialsCopyWithImpl<$Res>;
  $Res call(
      {VoidCallback onNoUserRecordFound,
      VoidCallback onUserHasNotCompletedProfileRegistration,
      VoidCallback onUserCredentialsReceived,
      VoidCallback onUserHasNotBeenOnboarded});
}

/// @nodoc
class __$GetUserCredentialsCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$GetUserCredentialsCopyWith<$Res> {
  __$GetUserCredentialsCopyWithImpl(
      _GetUserCredentials _value, $Res Function(_GetUserCredentials) _then)
      : super(_value, (v) => _then(v as _GetUserCredentials));

  @override
  _GetUserCredentials get _value => super._value as _GetUserCredentials;

  @override
  $Res call({
    Object? onNoUserRecordFound = freezed,
    Object? onUserHasNotCompletedProfileRegistration = freezed,
    Object? onUserCredentialsReceived = freezed,
    Object? onUserHasNotBeenOnboarded = freezed,
  }) {
    return _then(_GetUserCredentials(
      onNoUserRecordFound: onNoUserRecordFound == freezed
          ? _value.onNoUserRecordFound
          : onNoUserRecordFound // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onUserHasNotCompletedProfileRegistration:
          onUserHasNotCompletedProfileRegistration == freezed
              ? _value.onUserHasNotCompletedProfileRegistration
              : onUserHasNotCompletedProfileRegistration // ignore: cast_nullable_to_non_nullable
                  as VoidCallback,
      onUserCredentialsReceived: onUserCredentialsReceived == freezed
          ? _value.onUserCredentialsReceived
          : onUserCredentialsReceived // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onUserHasNotBeenOnboarded: onUserHasNotBeenOnboarded == freezed
          ? _value.onUserHasNotBeenOnboarded
          : onUserHasNotBeenOnboarded // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$_GetUserCredentials implements _GetUserCredentials {
  const _$_GetUserCredentials(
      {required this.onNoUserRecordFound,
      required this.onUserHasNotCompletedProfileRegistration,
      required this.onUserCredentialsReceived,
      required this.onUserHasNotBeenOnboarded});

  @override
  final VoidCallback onNoUserRecordFound;
  @override
  final VoidCallback onUserHasNotCompletedProfileRegistration;
  @override
  final VoidCallback onUserCredentialsReceived;
  @override
  final VoidCallback onUserHasNotBeenOnboarded;

  @override
  String toString() {
    return 'AuthEvents.getUserCredentials(onNoUserRecordFound: $onNoUserRecordFound, onUserHasNotCompletedProfileRegistration: $onUserHasNotCompletedProfileRegistration, onUserCredentialsReceived: $onUserCredentialsReceived, onUserHasNotBeenOnboarded: $onUserHasNotBeenOnboarded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUserCredentials &&
            (identical(other.onNoUserRecordFound, onNoUserRecordFound) ||
                other.onNoUserRecordFound == onNoUserRecordFound) &&
            (identical(other.onUserHasNotCompletedProfileRegistration,
                    onUserHasNotCompletedProfileRegistration) ||
                other.onUserHasNotCompletedProfileRegistration ==
                    onUserHasNotCompletedProfileRegistration) &&
            (identical(other.onUserCredentialsReceived,
                    onUserCredentialsReceived) ||
                other.onUserCredentialsReceived == onUserCredentialsReceived) &&
            (identical(other.onUserHasNotBeenOnboarded,
                    onUserHasNotBeenOnboarded) ||
                other.onUserHasNotBeenOnboarded == onUserHasNotBeenOnboarded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      onNoUserRecordFound,
      onUserHasNotCompletedProfileRegistration,
      onUserCredentialsReceived,
      onUserHasNotBeenOnboarded);

  @JsonKey(ignore: true)
  @override
  _$GetUserCredentialsCopyWith<_GetUserCredentials> get copyWith =>
      __$GetUserCredentialsCopyWithImpl<_GetUserCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return getUserCredentials(
        onNoUserRecordFound,
        onUserHasNotCompletedProfileRegistration,
        onUserCredentialsReceived,
        onUserHasNotBeenOnboarded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return getUserCredentials?.call(
        onNoUserRecordFound,
        onUserHasNotCompletedProfileRegistration,
        onUserCredentialsReceived,
        onUserHasNotBeenOnboarded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (getUserCredentials != null) {
      return getUserCredentials(
          onNoUserRecordFound,
          onUserHasNotCompletedProfileRegistration,
          onUserCredentialsReceived,
          onUserHasNotBeenOnboarded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return getUserCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return getUserCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (getUserCredentials != null) {
      return getUserCredentials(this);
    }
    return orElse();
  }
}

abstract class _GetUserCredentials implements AuthEvents {
  const factory _GetUserCredentials(
      {required VoidCallback onNoUserRecordFound,
      required VoidCallback onUserHasNotCompletedProfileRegistration,
      required VoidCallback onUserCredentialsReceived,
      required VoidCallback onUserHasNotBeenOnboarded}) = _$_GetUserCredentials;

  VoidCallback get onNoUserRecordFound;
  VoidCallback get onUserHasNotCompletedProfileRegistration;
  VoidCallback get onUserCredentialsReceived;
  VoidCallback get onUserHasNotBeenOnboarded;
  @JsonKey(ignore: true)
  _$GetUserCredentialsCopyWith<_GetUserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserHasLoggedOutCopyWith<$Res> {
  factory _$UserHasLoggedOutCopyWith(
          _UserHasLoggedOut value, $Res Function(_UserHasLoggedOut) then) =
      __$UserHasLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserHasLoggedOutCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$UserHasLoggedOutCopyWith<$Res> {
  __$UserHasLoggedOutCopyWithImpl(
      _UserHasLoggedOut _value, $Res Function(_UserHasLoggedOut) _then)
      : super(_value, (v) => _then(v as _UserHasLoggedOut));

  @override
  _UserHasLoggedOut get _value => super._value as _UserHasLoggedOut;
}

/// @nodoc

class _$_UserHasLoggedOut implements _UserHasLoggedOut {
  const _$_UserHasLoggedOut();

  @override
  String toString() {
    return 'AuthEvents.userHasLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserHasLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return userHasLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return userHasLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (userHasLoggedOut != null) {
      return userHasLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return userHasLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return userHasLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (userHasLoggedOut != null) {
      return userHasLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _UserHasLoggedOut implements AuthEvents {
  const factory _UserHasLoggedOut() = _$_UserHasLoggedOut;
}

/// @nodoc
abstract class _$VerifyPhoneNumberCopyWith<$Res> {
  factory _$VerifyPhoneNumberCopyWith(
          _VerifyPhoneNumber value, $Res Function(_VerifyPhoneNumber) then) =
      __$VerifyPhoneNumberCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      AuthServiceProvider authServiceProvider,
      dynamic Function(String) onVerificationCodeSent,
      dynamic Function(String) onVerificationFailed,
      dynamic Function(PhoneAuthCredential) onVerificationCompleted});

  $AuthServiceProviderCopyWith<$Res> get authServiceProvider;
}

/// @nodoc
class __$VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberCopyWith<$Res> {
  __$VerifyPhoneNumberCopyWithImpl(
      _VerifyPhoneNumber _value, $Res Function(_VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as _VerifyPhoneNumber));

  @override
  _VerifyPhoneNumber get _value => super._value as _VerifyPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? authServiceProvider = freezed,
    Object? onVerificationCodeSent = freezed,
    Object? onVerificationFailed = freezed,
    Object? onVerificationCompleted = freezed,
  }) {
    return _then(_VerifyPhoneNumber(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      authServiceProvider: authServiceProvider == freezed
          ? _value.authServiceProvider
          : authServiceProvider // ignore: cast_nullable_to_non_nullable
              as AuthServiceProvider,
      onVerificationCodeSent: onVerificationCodeSent == freezed
          ? _value.onVerificationCodeSent
          : onVerificationCodeSent // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onVerificationFailed: onVerificationFailed == freezed
          ? _value.onVerificationFailed
          : onVerificationFailed // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onVerificationCompleted: onVerificationCompleted == freezed
          ? _value.onVerificationCompleted
          : onVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as dynamic Function(PhoneAuthCredential),
    ));
  }

  @override
  $AuthServiceProviderCopyWith<$Res> get authServiceProvider {
    return $AuthServiceProviderCopyWith<$Res>(_value.authServiceProvider,
        (value) {
      return _then(_value.copyWith(authServiceProvider: value));
    });
  }
}

/// @nodoc

class _$_VerifyPhoneNumber implements _VerifyPhoneNumber {
  const _$_VerifyPhoneNumber(
      {required this.phoneNumber,
      required this.authServiceProvider,
      required this.onVerificationCodeSent,
      required this.onVerificationFailed,
      required this.onVerificationCompleted});

  @override
  final String phoneNumber;
  @override
  final AuthServiceProvider authServiceProvider;
  @override
  final dynamic Function(String) onVerificationCodeSent;
  @override
  final dynamic Function(String) onVerificationFailed;
  @override
  final dynamic Function(PhoneAuthCredential) onVerificationCompleted;

  @override
  String toString() {
    return 'AuthEvents.verifyPhoneNumber(phoneNumber: $phoneNumber, authServiceProvider: $authServiceProvider, onVerificationCodeSent: $onVerificationCodeSent, onVerificationFailed: $onVerificationFailed, onVerificationCompleted: $onVerificationCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.authServiceProvider, authServiceProvider) &&
            (identical(other.onVerificationCodeSent, onVerificationCodeSent) ||
                other.onVerificationCodeSent == onVerificationCodeSent) &&
            (identical(other.onVerificationFailed, onVerificationFailed) ||
                other.onVerificationFailed == onVerificationFailed) &&
            (identical(
                    other.onVerificationCompleted, onVerificationCompleted) ||
                other.onVerificationCompleted == onVerificationCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(authServiceProvider),
      onVerificationCodeSent,
      onVerificationFailed,
      onVerificationCompleted);

  @JsonKey(ignore: true)
  @override
  _$VerifyPhoneNumberCopyWith<_VerifyPhoneNumber> get copyWith =>
      __$VerifyPhoneNumberCopyWithImpl<_VerifyPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return verifyPhoneNumber(phoneNumber, authServiceProvider,
        onVerificationCodeSent, onVerificationFailed, onVerificationCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return verifyPhoneNumber?.call(phoneNumber, authServiceProvider,
        onVerificationCodeSent, onVerificationFailed, onVerificationCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(
          phoneNumber,
          authServiceProvider,
          onVerificationCodeSent,
          onVerificationFailed,
          onVerificationCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AuthEvents {
  const factory _VerifyPhoneNumber(
      {required String phoneNumber,
      required AuthServiceProvider authServiceProvider,
      required dynamic Function(String) onVerificationCodeSent,
      required dynamic Function(String) onVerificationFailed,
      required dynamic Function(PhoneAuthCredential)
          onVerificationCompleted}) = _$_VerifyPhoneNumber;

  String get phoneNumber;
  AuthServiceProvider get authServiceProvider;
  dynamic Function(String) get onVerificationCodeSent;
  dynamic Function(String) get onVerificationFailed;
  dynamic Function(PhoneAuthCredential) get onVerificationCompleted;
  @JsonKey(ignore: true)
  _$VerifyPhoneNumberCopyWith<_VerifyPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OTPConfirmationCopyWith<$Res> {
  factory _$OTPConfirmationCopyWith(
          _OTPConfirmation value, $Res Function(_OTPConfirmation) then) =
      __$OTPConfirmationCopyWithImpl<$Res>;
  $Res call(
      {PhoneAuthCredential phoneAuthCredential,
      AuthServiceProvider authServiceProvider,
      dynamic Function(String) onInvalidOTP,
      VoidCallback onVerificationCompleted});

  $AuthServiceProviderCopyWith<$Res> get authServiceProvider;
}

/// @nodoc
class __$OTPConfirmationCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$OTPConfirmationCopyWith<$Res> {
  __$OTPConfirmationCopyWithImpl(
      _OTPConfirmation _value, $Res Function(_OTPConfirmation) _then)
      : super(_value, (v) => _then(v as _OTPConfirmation));

  @override
  _OTPConfirmation get _value => super._value as _OTPConfirmation;

  @override
  $Res call({
    Object? phoneAuthCredential = freezed,
    Object? authServiceProvider = freezed,
    Object? onInvalidOTP = freezed,
    Object? onVerificationCompleted = freezed,
  }) {
    return _then(_OTPConfirmation(
      phoneAuthCredential: phoneAuthCredential == freezed
          ? _value.phoneAuthCredential
          : phoneAuthCredential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
      authServiceProvider: authServiceProvider == freezed
          ? _value.authServiceProvider
          : authServiceProvider // ignore: cast_nullable_to_non_nullable
              as AuthServiceProvider,
      onInvalidOTP: onInvalidOTP == freezed
          ? _value.onInvalidOTP
          : onInvalidOTP // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onVerificationCompleted: onVerificationCompleted == freezed
          ? _value.onVerificationCompleted
          : onVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }

  @override
  $AuthServiceProviderCopyWith<$Res> get authServiceProvider {
    return $AuthServiceProviderCopyWith<$Res>(_value.authServiceProvider,
        (value) {
      return _then(_value.copyWith(authServiceProvider: value));
    });
  }
}

/// @nodoc

class _$_OTPConfirmation implements _OTPConfirmation {
  const _$_OTPConfirmation(
      {required this.phoneAuthCredential,
      required this.authServiceProvider,
      required this.onInvalidOTP,
      required this.onVerificationCompleted});

  @override
  final PhoneAuthCredential phoneAuthCredential;
  @override
  final AuthServiceProvider authServiceProvider;
  @override
  final dynamic Function(String) onInvalidOTP;
  @override
  final VoidCallback onVerificationCompleted;

  @override
  String toString() {
    return 'AuthEvents.confirmOTP(phoneAuthCredential: $phoneAuthCredential, authServiceProvider: $authServiceProvider, onInvalidOTP: $onInvalidOTP, onVerificationCompleted: $onVerificationCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OTPConfirmation &&
            const DeepCollectionEquality()
                .equals(other.phoneAuthCredential, phoneAuthCredential) &&
            const DeepCollectionEquality()
                .equals(other.authServiceProvider, authServiceProvider) &&
            (identical(other.onInvalidOTP, onInvalidOTP) ||
                other.onInvalidOTP == onInvalidOTP) &&
            (identical(
                    other.onVerificationCompleted, onVerificationCompleted) ||
                other.onVerificationCompleted == onVerificationCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneAuthCredential),
      const DeepCollectionEquality().hash(authServiceProvider),
      onInvalidOTP,
      onVerificationCompleted);

  @JsonKey(ignore: true)
  @override
  _$OTPConfirmationCopyWith<_OTPConfirmation> get copyWith =>
      __$OTPConfirmationCopyWithImpl<_OTPConfirmation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return confirmOTP(phoneAuthCredential, authServiceProvider, onInvalidOTP,
        onVerificationCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return confirmOTP?.call(phoneAuthCredential, authServiceProvider,
        onInvalidOTP, onVerificationCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (confirmOTP != null) {
      return confirmOTP(phoneAuthCredential, authServiceProvider, onInvalidOTP,
          onVerificationCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return confirmOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return confirmOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (confirmOTP != null) {
      return confirmOTP(this);
    }
    return orElse();
  }
}

abstract class _OTPConfirmation implements AuthEvents {
  const factory _OTPConfirmation(
      {required PhoneAuthCredential phoneAuthCredential,
      required AuthServiceProvider authServiceProvider,
      required dynamic Function(String) onInvalidOTP,
      required VoidCallback onVerificationCompleted}) = _$_OTPConfirmation;

  PhoneAuthCredential get phoneAuthCredential;
  AuthServiceProvider get authServiceProvider;
  dynamic Function(String) get onInvalidOTP;
  VoidCallback get onVerificationCompleted;
  @JsonKey(ignore: true)
  _$OTPConfirmationCopyWith<_OTPConfirmation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
  $Res call({AuthServiceProvider authServiceProvider, VoidCallback onSignOut});

  $AuthServiceProviderCopyWith<$Res> get authServiceProvider;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AuthEventsCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;

  @override
  $Res call({
    Object? authServiceProvider = freezed,
    Object? onSignOut = freezed,
  }) {
    return _then(_SignOut(
      authServiceProvider: authServiceProvider == freezed
          ? _value.authServiceProvider
          : authServiceProvider // ignore: cast_nullable_to_non_nullable
              as AuthServiceProvider,
      onSignOut: onSignOut == freezed
          ? _value.onSignOut
          : onSignOut // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }

  @override
  $AuthServiceProviderCopyWith<$Res> get authServiceProvider {
    return $AuthServiceProviderCopyWith<$Res>(_value.authServiceProvider,
        (value) {
      return _then(_value.copyWith(authServiceProvider: value));
    });
  }
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut(
      {required this.authServiceProvider, required this.onSignOut});

  @override
  final AuthServiceProvider authServiceProvider;
  @override
  final VoidCallback onSignOut;

  @override
  String toString() {
    return 'AuthEvents.signOut(authServiceProvider: $authServiceProvider, onSignOut: $onSignOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignOut &&
            const DeepCollectionEquality()
                .equals(other.authServiceProvider, authServiceProvider) &&
            (identical(other.onSignOut, onSignOut) ||
                other.onSignOut == onSignOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(authServiceProvider), onSignOut);

  @JsonKey(ignore: true)
  @override
  _$SignOutCopyWith<_SignOut> get copyWith =>
      __$SignOutCopyWithImpl<_SignOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return signOut(authServiceProvider, onSignOut);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return signOut?.call(authServiceProvider, onSignOut);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(authServiceProvider, onSignOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvents {
  const factory _SignOut(
      {required AuthServiceProvider authServiceProvider,
      required VoidCallback onSignOut}) = _$_SignOut;

  AuthServiceProvider get authServiceProvider;
  VoidCallback get onSignOut;
  @JsonKey(ignore: true)
  _$SignOutCopyWith<_SignOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerificationCodeSentCopyWith<$Res> {
  factory _$VerificationCodeSentCopyWith(_VerificationCodeSent value,
          $Res Function(_VerificationCodeSent) then) =
      __$VerificationCodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class __$VerificationCodeSentCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$VerificationCodeSentCopyWith<$Res> {
  __$VerificationCodeSentCopyWithImpl(
      _VerificationCodeSent _value, $Res Function(_VerificationCodeSent) _then)
      : super(_value, (v) => _then(v as _VerificationCodeSent));

  @override
  _VerificationCodeSent get _value => super._value as _VerificationCodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(_VerificationCodeSent(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerificationCodeSent implements _VerificationCodeSent {
  const _$_VerificationCodeSent({required this.verificationId});

  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthEvents.verificationCodeSent(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationCodeSent &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(verificationId));

  @JsonKey(ignore: true)
  @override
  _$VerificationCodeSentCopyWith<_VerificationCodeSent> get copyWith =>
      __$VerificationCodeSentCopyWithImpl<_VerificationCodeSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return verificationCodeSent(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return verificationCodeSent?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationCodeSent != null) {
      return verificationCodeSent(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return verificationCodeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return verificationCodeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationCodeSent != null) {
      return verificationCodeSent(this);
    }
    return orElse();
  }
}

abstract class _VerificationCodeSent implements AuthEvents {
  const factory _VerificationCodeSent({required String verificationId}) =
      _$_VerificationCodeSent;

  String get verificationId;
  @JsonKey(ignore: true)
  _$VerificationCodeSentCopyWith<_VerificationCodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerificationAutoCompletedCopyWith<$Res> {
  factory _$VerificationAutoCompletedCopyWith(_VerificationAutoCompleted value,
          $Res Function(_VerificationAutoCompleted) then) =
      __$VerificationAutoCompletedCopyWithImpl<$Res>;
  $Res call({PhoneAuthCredential phoneAuthCredential});
}

/// @nodoc
class __$VerificationAutoCompletedCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$VerificationAutoCompletedCopyWith<$Res> {
  __$VerificationAutoCompletedCopyWithImpl(_VerificationAutoCompleted _value,
      $Res Function(_VerificationAutoCompleted) _then)
      : super(_value, (v) => _then(v as _VerificationAutoCompleted));

  @override
  _VerificationAutoCompleted get _value =>
      super._value as _VerificationAutoCompleted;

  @override
  $Res call({
    Object? phoneAuthCredential = freezed,
  }) {
    return _then(_VerificationAutoCompleted(
      phoneAuthCredential: phoneAuthCredential == freezed
          ? _value.phoneAuthCredential
          : phoneAuthCredential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
    ));
  }
}

/// @nodoc

class _$_VerificationAutoCompleted implements _VerificationAutoCompleted {
  const _$_VerificationAutoCompleted({required this.phoneAuthCredential});

  @override
  final PhoneAuthCredential phoneAuthCredential;

  @override
  String toString() {
    return 'AuthEvents.verificationAutoCompleted(phoneAuthCredential: $phoneAuthCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationAutoCompleted &&
            const DeepCollectionEquality()
                .equals(other.phoneAuthCredential, phoneAuthCredential));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneAuthCredential));

  @JsonKey(ignore: true)
  @override
  _$VerificationAutoCompletedCopyWith<_VerificationAutoCompleted>
      get copyWith =>
          __$VerificationAutoCompletedCopyWithImpl<_VerificationAutoCompleted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return verificationAutoCompleted(phoneAuthCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return verificationAutoCompleted?.call(phoneAuthCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationAutoCompleted != null) {
      return verificationAutoCompleted(phoneAuthCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return verificationAutoCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return verificationAutoCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationAutoCompleted != null) {
      return verificationAutoCompleted(this);
    }
    return orElse();
  }
}

abstract class _VerificationAutoCompleted implements AuthEvents {
  const factory _VerificationAutoCompleted(
          {required PhoneAuthCredential phoneAuthCredential}) =
      _$_VerificationAutoCompleted;

  PhoneAuthCredential get phoneAuthCredential;
  @JsonKey(ignore: true)
  _$VerificationAutoCompletedCopyWith<_VerificationAutoCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerificationFailedCopyWith<$Res> {
  factory _$VerificationFailedCopyWith(
          _VerificationFailed value, $Res Function(_VerificationFailed) then) =
      __$VerificationFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$VerificationFailedCopyWithImpl<$Res>
    extends _$AuthEventsCopyWithImpl<$Res>
    implements _$VerificationFailedCopyWith<$Res> {
  __$VerificationFailedCopyWithImpl(
      _VerificationFailed _value, $Res Function(_VerificationFailed) _then)
      : super(_value, (v) => _then(v as _VerificationFailed));

  @override
  _VerificationFailed get _value => super._value as _VerificationFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VerificationFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerificationFailed implements _VerificationFailed {
  const _$_VerificationFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthEvents.verificationFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$VerificationFailedCopyWith<_VerificationFailed> get copyWith =>
      __$VerificationFailedCopyWithImpl<_VerificationFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserToLocalStorage,
    required TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)
        getUserCredentials,
    required TResult Function() userHasLoggedOut,
    required TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)
        verifyPhoneNumber,
    required TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)
        confirmOTP,
    required TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)
        signOut,
    required TResult Function(String verificationId) verificationCodeSent,
    required TResult Function(PhoneAuthCredential phoneAuthCredential)
        verificationAutoCompleted,
    required TResult Function(String message) verificationFailed,
  }) {
    return verificationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
  }) {
    return verificationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserToLocalStorage,
    TResult Function(
            VoidCallback onNoUserRecordFound,
            VoidCallback onUserHasNotCompletedProfileRegistration,
            VoidCallback onUserCredentialsReceived,
            VoidCallback onUserHasNotBeenOnboarded)?
        getUserCredentials,
    TResult Function()? userHasLoggedOut,
    TResult Function(
            String phoneNumber,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onVerificationCodeSent,
            dynamic Function(String) onVerificationFailed,
            dynamic Function(PhoneAuthCredential) onVerificationCompleted)?
        verifyPhoneNumber,
    TResult Function(
            PhoneAuthCredential phoneAuthCredential,
            AuthServiceProvider authServiceProvider,
            dynamic Function(String) onInvalidOTP,
            VoidCallback onVerificationCompleted)?
        confirmOTP,
    TResult Function(
            AuthServiceProvider authServiceProvider, VoidCallback onSignOut)?
        signOut,
    TResult Function(String verificationId)? verificationCodeSent,
    TResult Function(PhoneAuthCredential phoneAuthCredential)?
        verificationAutoCompleted,
    TResult Function(String message)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreUserToLocalStorage value)
        storeUserToLocalStorage,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_UserHasLoggedOut value) userHasLoggedOut,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_OTPConfirmation value) confirmOTP,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerificationCodeSent value) verificationCodeSent,
    required TResult Function(_VerificationAutoCompleted value)
        verificationAutoCompleted,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
  }) {
    return verificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreUserToLocalStorage value)? storeUserToLocalStorage,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_UserHasLoggedOut value)? userHasLoggedOut,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_OTPConfirmation value)? confirmOTP,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerificationCodeSent value)? verificationCodeSent,
    TResult Function(_VerificationAutoCompleted value)?
        verificationAutoCompleted,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class _VerificationFailed implements AuthEvents {
  const factory _VerificationFailed({required String message}) =
      _$_VerificationFailed;

  String get message;
  @JsonKey(ignore: true)
  _$VerificationFailedCopyWith<_VerificationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

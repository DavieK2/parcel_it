import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
import 'package:parcel_it_app/src/authentication/_service_providers/auth_service_provider.dart';
part 'auth_event.freezed.dart';

@freezed
class AuthEvents with _$AuthEvents {
  const factory AuthEvents.storeUserToLocalStorage(UserModel user) = _StoreUserToLocalStorage;
  const factory AuthEvents.getUserCredentials({
    required VoidCallback onNoUserRecordFound,
    required VoidCallback onUserHasNotCompletedProfileRegistration,
    required VoidCallback onUserCredentialsReceived,
    required VoidCallback onUserHasNotBeenOnboarded,
  }) = _GetUserCredentials;

  const factory AuthEvents.userHasLoggedOut() = _UserHasLoggedOut;

  const factory AuthEvents.verifyPhoneNumber({
    required String phoneNumber,
    required AuthServiceProvider authServiceProvider,
    required Function(String) onVerificationCodeSent,
    required Function(String) onVerificationFailed,
    required Function(PhoneAuthCredential phoneAuthCredential) onVerificationCompleted,
  }) = _VerifyPhoneNumber;

  const factory AuthEvents.confirmOTP({
    required PhoneAuthCredential phoneAuthCredential,
    required AuthServiceProvider authServiceProvider,
    required Function(String) onInvalidOTP,
    required VoidCallback onVerificationCompleted,
  }) = _OTPConfirmation;

  const factory AuthEvents.signOut({
    required AuthServiceProvider authServiceProvider,
    required VoidCallback onSignOut,
  }) = _SignOut;

  const factory AuthEvents.verificationCodeSent({required String verificationId}) = _VerificationCodeSent;
  const factory AuthEvents.verificationAutoCompleted({required PhoneAuthCredential phoneAuthCredential}) =
      _VerificationAutoCompleted;
  const factory AuthEvents.verificationFailed({required String message}) = _VerificationFailed;
}

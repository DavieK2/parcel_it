import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';

abstract class PhoneAuthServiceInterface {
  Future<void> verifyPhoneNumber({required String phoneNumber});
  Future<void> otpConfirmation({required PhoneAuthCredential phoneAuthCredential});
  void verificationCodeSent({required String verificationId});
  void verificationFailed({required String message});
  void verificationCompleted(UserModel user);
  Future<void> checkIfIsNewUser(UserModel user);
  Future<void> signOut();
}

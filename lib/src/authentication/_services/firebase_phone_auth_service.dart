import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/authentication/_events/auth_event.dart';
import 'package:parcel_it_app/src/authentication/_interfaces/phone_auth_interface.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';

@injectable
class FirebasePhoneAuthService implements PhoneAuthServiceInterface {
  final FirebaseAuth _firebaseAuth;
  final EventBus _eventBus;
  final FirebaseFirestore _firebaseFirestore;
  final Dio _dio;
  late final CollectionReference _collectionReference = _firebaseFirestore.collection('users');

  FirebasePhoneAuthService(this._firebaseAuth, this._eventBus, this._dio, this._firebaseFirestore);

  @override
  Future<void> verifyPhoneNumber({required String phoneNumber}) async {
    try {
      await _dio.get('https://google.com');
    } catch (e) {
      verificationFailed(message: 'Please Check you Internet Connection');
    }

    await Task(() => _firebaseAuth.verifyPhoneNumber(
              phoneNumber: phoneNumber,
              verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {
                _onVerificationAutoCompleted(phoneAuthCredential);
              },
              verificationFailed: (FirebaseAuthException e) => verificationFailed(message: e.message.toString()),
              codeSent: (String verificationId, int? resendToken) => verificationCodeSent(
                verificationId: verificationId,
              ),
              codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {},
            ))
        .attempt()
        .map((either) => either.leftMap(
              (error) => error.toString(),
            ))
        .run()
        .then(
          (result) => result.fold(
            (error) => verificationFailed(message: error),
            (_) {},
          ),
        );
  }

  @override
  Future<void> otpConfirmation({required PhoneAuthCredential phoneAuthCredential}) async {
    await Task(() => _firebaseAuth.signInWithCredential(phoneAuthCredential))
        .attempt()
        .timeout(const Duration(seconds: 120))
        .map((response) => response.leftMap(
              (error) => error.toString(),
            ))
        .run()
        .then(
          (response) => response.fold(
            (error) => verificationFailed(message: error),
            (userCredential) {
              UserModel _user = UserModel(
                uid: userCredential.user!.uid,
                firstName: "",
                lastName: "",
                email: "",
                phoneNumber: userCredential.user!.phoneNumber!,
                hasRegisteredProfile: false,
              );

              verificationCompleted(_user);
            },
          ),
        );
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    _eventBus.fire(const AuthEvents.userHasLoggedOut());
  }

  @override
  void verificationFailed({required String message}) {
    _eventBus.fire(
      AuthEvents.verificationFailed(
        message: message,
      ),
    );
  }

  @override
  void verificationCodeSent({required String verificationId}) {
    _eventBus.fire(
      AuthEvents.verificationCodeSent(
        verificationId: verificationId,
      ),
    );
  }

  @override
  void verificationCompleted(UserModel user) => checkIfIsNewUser(user);

  CollectionReference<UserModel> _userReferecne() {
    return _collectionReference.withConverter<UserModel>(
      fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
      toFirestore: (userModel, _) => userModel.toJson(),
    );
  }

  @protected
  @override
  Future<void> checkIfIsNewUser(UserModel user) async {
    final _userReference = _userReferecne();

    await Task(() => _userReference.doc(user.phoneNumber).get())
        .attempt()
        .map(
          (either) => either.leftMap(
            (error) => error.toString(),
          ),
        )
        .run()
        .then(
          (result) => result.fold(
            (error) => _loginFailure(error),
            (snapshot) => snapshot.exists ? _storeUserToLocalStorage(snapshot.data()!) : _createUserProfile(user),
          ),
        );
  }

  @protected
  Future<void> _createUserProfile(UserModel user) async {
    final _userReference = _userReferecne();

    try {
      await _userReference.doc(user.phoneNumber).set(user);
      _storeUserToLocalStorage(user);
    } catch (e) {
      _loginFailure('There was an error');
    }
  }

  void _onVerificationAutoCompleted(phoneAuthCredential) {
    _eventBus.fire(AuthEvents.verificationAutoCompleted(phoneAuthCredential: phoneAuthCredential));
  }

  void _storeUserToLocalStorage(user) => _eventBus.fire(AuthEvents.storeUserToLocalStorage(user));

  void _loginFailure(message) => _eventBus.fire(AuthEvents.verificationFailed(message: message));
}

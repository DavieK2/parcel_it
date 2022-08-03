import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:event_bus/event_bus.dart';
import 'package:parcel_it_app/src/authentication/_events/auth_event.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
import 'package:parcel_it_app/src/authentication/_service_providers/auth_service_provider.dart';
import 'package:parcel_it_app/src/authentication/_services/firebase_phone_auth_service.dart';
import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class AuthService {
  final EventBus _eventBus;
  final SharedPreferences _localStorage;
  final FirebasePhoneAuthService _firebasePhoneAuthService;
  final NavigationService _navigationService;
  StreamSubscription? _streamSubscription;

  Function(String)? _onVerificationCodeSent;
  Function(String)? _onVerificationFailed;
  VoidCallback? _onVerificationCompleted;
  Function(PhoneAuthCredential)? _onVerificationAutoCompleted;
  VoidCallback? _onNoUserRecordFound;
  VoidCallback? _onUserHasNotCompletedProfileRegistration;
  VoidCallback? _onUserCredentialsReceived;
  VoidCallback? _onUserHasLoggedOut;
  VoidCallback? _onUserHasNotBeenOnboarded;
  VoidCallback? _onSignOut;

  AuthService(this._eventBus, this._localStorage, this._firebasePhoneAuthService, this._navigationService);

  void _verifyPhoneNumber(
    String phoneNumber,
    AuthServiceProvider authServiceProvider,
    Function(String)? onVerificationCodeSent,
    Function(String)? onVerificationFailed,
    Function(PhoneAuthCredential)? onVerificationAutoCompleted,
  ) {
    _onVerificationCodeSent = onVerificationCodeSent;
    _onVerificationFailed = onVerificationFailed;
    _onVerificationAutoCompleted = onVerificationAutoCompleted;

    authServiceProvider.when(
      firebase: () => _firebasePhoneAuthService.verifyPhoneNumber(phoneNumber: phoneNumber),
    );
  }

  void _confirmOTP(
    PhoneAuthCredential phoneAuthCredential,
    AuthServiceProvider authServiceProvider,
    Function(String) onInvalidOTP,
    VoidCallback onVerificationCompleted,
  ) {
    _onVerificationCompleted = onVerificationCompleted;
    _onVerificationFailed = onInvalidOTP;

    authServiceProvider.when(
      firebase: () => _firebasePhoneAuthService.otpConfirmation(
        phoneAuthCredential: phoneAuthCredential,
      ),
    );
  }

  Future<void> _getUserCredentials({
    required VoidCallback onNoUserRecordFound,
    required VoidCallback onUserHasNotCompletedProfileRegistration,
    required VoidCallback onUserCredentialsReceived,
    required VoidCallback onUserHasNotBeenOnboarded,
  }) async {
    _onNoUserRecordFound = onNoUserRecordFound;
    _onUserHasNotCompletedProfileRegistration = onUserHasNotCompletedProfileRegistration;
    _onUserCredentialsReceived = onUserCredentialsReceived;
    _onUserHasNotBeenOnboarded = onUserHasNotBeenOnboarded;

    String? _hasBeenOnboarded = _localStorage.getString('onboarded');
    String? _localUser = _localStorage.getString('localUser');

    if (_hasBeenOnboarded == null) return _onUserHasNotBeenOnboarded!();

    if (_localUser == null) return _onNoUserRecordFound!();

    Map<String, dynamic> _jsonUser = jsonDecode(_localUser);
    UserModel _user = UserModel.fromJson(_jsonUser);
    _user.hasRegisteredProfile ? _onUserCredentialsReceived!() : _onUserHasNotCompletedProfileRegistration!();
  }

  void _storeUserToLocalStorage(UserModel user) async {
    Map<String, dynamic> _user = user.toJson();
    String _localUser = jsonEncode(_user);
    await _localStorage.setString('localUser', _localUser);
    await _localStorage.setString('onboarded', 'true');

    _onVerificationCompleted!();
  }

  void _signOut(AuthServiceProvider authServiceProvider, VoidCallback onSignout) {
    _onSignOut = onSignout;
    authServiceProvider.when(
      firebase: _firebasePhoneAuthService.signOut,
    );
  }

  void initListeners() {
    _streamSubscription ??= _eventBus.on<AuthEvents>().listen(
      (event) {
        event.when(
          verifyPhoneNumber: (
            phoneNumber,
            authServiceProvider,
            onVerificationCodeSent,
            onVerificationFailed,
            onVerificationAutoCompleted,
          ) =>
              _verifyPhoneNumber(
            phoneNumber,
            authServiceProvider,
            onVerificationCodeSent,
            onVerificationFailed,
            onVerificationAutoCompleted,
          ),
          confirmOTP: (
            phoneAuthCredential,
            authServiceProvider,
            onInvalidOTP,
            onVerificationCompleted,
          ) =>
              _confirmOTP(
            phoneAuthCredential,
            authServiceProvider,
            onInvalidOTP,
            onVerificationCompleted,
          ),
          verificationCodeSent: (verificationId) => _onVerificationCodeSent!(verificationId),
          verificationAutoCompleted: (phoneAuthCredential) => _onVerificationAutoCompleted!(phoneAuthCredential),
          verificationFailed: (error) => _onVerificationFailed!(error),
          getUserCredentials: (
            onNoUserRecordFound,
            onUserHasNotCompletedProfileRegistration,
            onUserCredentialsReceived,
            onUserHasNotBeenOnboarded,
          ) =>
              _getUserCredentials(
            onNoUserRecordFound: onNoUserRecordFound,
            onUserHasNotCompletedProfileRegistration: onUserHasNotCompletedProfileRegistration,
            onUserCredentialsReceived: onUserCredentialsReceived,
            onUserHasNotBeenOnboarded: onUserHasNotBeenOnboarded,
          ),
          storeUserToLocalStorage: _storeUserToLocalStorage,
          userHasLoggedOut: () {
            _localStorage.remove('localUser');
            _onSignOut!();
          },
          signOut: (authServiceProvider, onSignOut) => _signOut(
            authServiceProvider,
            onSignOut,
          ),
        );
      },
    );
  }

  void close() {
    _streamSubscription?.cancel();
  }
}

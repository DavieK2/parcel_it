import 'dart:async';
import 'package:event_bus/event_bus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/authentication/_controllers/otp_controller.dart';
import 'package:parcel_it_app/src/authentication/_events/auth_event.dart';
import 'package:parcel_it_app/src/authentication/_service_providers/auth_service_provider.dart';
import 'package:parcel_it_app/src/authentication/_views/auth_gate_screen.dart';
import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
import 'package:parcel_it_app/src/authentication/_widgets/otp_widget.dart';
import 'package:parcel_it_app/src/core/_services/dialog_service.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/reactive_button.dart';
import 'package:parcel_it_app/src/providers.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class PhoneAuthController extends ChangeNotifier {
  final AuthServiceProvider _authServiceProvider = const AuthServiceProvider.firebase();
  final DialogService _dialogService;
  final NavigationService _navigationService;
  final EventBus _eventBus;
  final Reader _read;
  final PublishSubject<OTPStream> _receivedOTPSMS = PublishSubject();
  final PublishSubject<bool> _isOTPModalDismissable = PublishSubject();

  static const String _buttonInitialText = 'Verify Phone';
  static const String _buttonLoadingText = 'Verifying Phone';

  int _smsTimeOut = 30;
  bool _isOTPDialogOpen = false;
  bool _readOnly = false;
  String _verificationId = '';
  String? _phoneNumber;
  Timer? _timer;
  ReactiveButtonState _buttonState = const ReactiveButtonState.buttonDisabled(text: _buttonInitialText);
  Function(bool)? _onIsOTPInvalid;

  bool get readOnly => _readOnly;
  int get smsTimeOut => _smsTimeOut;
  ReactiveButtonState get buttonState => _buttonState;

  PhoneAuthController(
    @factoryParam this._read,
    this._eventBus,
    this._dialogService,
    this._navigationService,
  );

  void verifyPhoneNumber() async {
    _readOnly = true;
    _setToLoadingState(_buttonLoadingText);

    _eventBus.fire(
      AuthEvents.verifyPhoneNumber(
        phoneNumber: _phoneNumber!,
        authServiceProvider: _authServiceProvider,
        onVerificationCodeSent: (verificationId) => _verificationCodeSent(verificationId),
        onVerificationFailed: (error) => _verificationFailed(error),
        onVerificationCompleted: (phoneAuthCredential) {
          _receivedOTPSMS.sink.add(OTPStream.receivedOTPSMS(phoneAuthCredential.smsCode!));
        },
      ),
    );
  }

  void signInWithPhoneNumber({String? otp, PhoneAuthCredential? phoneAuthCredential}) {
    if (_smsTimeOut != 30) _setToLoadingState(_buttonLoadingText);

    phoneAuthCredential ??= PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: otp!,
    );

    _isOTPModalDismissable.sink.add(false);

    _eventBus.fire(
      AuthEvents.confirmOTP(
        phoneAuthCredential: phoneAuthCredential,
        authServiceProvider: _authServiceProvider,
        onInvalidOTP: (_) {
          if (_isOTPDialogOpen) _onIsOTPInvalid!(true);
          _isOTPModalDismissable.sink.add(true);
        },
        onVerificationCompleted: _verificationCompleted,
      ),
    );
  }

  void setPhoneNumber(String? phoneNumber) {
    _phoneNumber = phoneNumber;
    if (phoneNumber == '' && _smsTimeOut == 30) _setButtonToDisabledState(_buttonInitialText);
    if (phoneNumber != '' && _smsTimeOut == 30) _setButtonToEnabledState(_buttonInitialText, verifyPhoneNumber);
  }

  void signOut() {
    _eventBus.fire(
      AuthEvents.signOut(
        authServiceProvider: const AuthServiceProvider.firebase(),
        onSignOut: () => _navigationService.push(const Routes.auth(), PhoneAuthScreen.route),
      ),
    );
  }

  void _verificationCodeSent(String verificationId) {
    _verificationId = verificationId;
    _startTimer();

    if (_isOTPDialogOpen) return;

    _dialogService.showBottomModalDialog(
      dialogtype: DIALOGTYPE.otp,
      dismissIcon: true,
      showHideDismissIcon: _isOTPModalDismissable.stream,
      onDismiss: () {
        _dialogService.closeBottomModalDialog();
      },
      isDismissable: false,
      enableDrag: false,
      height: 0.7,
      child: OTP(
        receivedOTPSMS: _receivedOTPSMS.stream,
        onCompleted: (otp, onIsOTPInvalid) {
          signInWithPhoneNumber(otp: otp);
          _onIsOTPInvalid = onIsOTPInvalid;
        },
      ),
    );

    _isOTPDialogOpen = true;
  }

  void _verificationFailed(String message) {
    _dialogService.showBottomModalDialog(
      child: Text(message),
      height: 0.4,
    );
    _isOTPModalDismissable.sink.add(true);

    _readOnly = false;
    _setButtonToDisabledState(_buttonInitialText);
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (_smsTimeOut == 0) {
          _readOnly = false;
          _setButtonToDisabledState(_buttonInitialText);
          _timer?.cancel();
          _smsTimeOut = 30;
        } else {
          _smsTimeOut--;
          _setButtonToDisabledState('$_buttonInitialText ($_smsTimeOut)');
        }
      },
    );
  }

  void _verificationCompleted() async {
    _timer?.cancel();
    if (_isOTPDialogOpen) _onIsOTPInvalid!(false);
    await Future.delayed(const Duration(milliseconds: 500));
    _navigationService.push(const Routes.authGate(), AuthGate.route);
  }

  void _setButtonToDisabledState(String text) {
    _buttonState = ReactiveButtonState.buttonDisabled(text: text);
    notifyListeners();
  }

  void _setButtonToEnabledState(String text, VoidCallback? onPressed) {
    _buttonState = ReactiveButtonState.buttonEnabled(text: text, onPressed: onPressed);
    notifyListeners();
  }

  void _setToLoadingState(String text) {
    _buttonState = ReactiveButtonState.loading(text: text);
    notifyListeners();
  }

  void closeOTPDialog() => _isOTPDialogOpen = false;
}

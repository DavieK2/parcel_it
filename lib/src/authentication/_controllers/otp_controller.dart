import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/providers.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

final isOTPControllerDisposed = StateProvider((ref) => false);

@injectable
class OTPController extends ChangeNotifier {
  final StreamController<ErrorAnimationType> _errorController = StreamController<ErrorAnimationType>.broadcast();
  final TextEditingController _textEditingController = TextEditingController();

  Color _statusColor = kPrimaryCardColor;
  Color _borderColor = kPrimaryFormFieldBorderColor;
  bool _isVerifying = false;
  bool _hasError = false;

  StreamController<ErrorAnimationType> get errorController => _errorController;
  TextEditingController get textEditingController => _textEditingController;

  Color get statusColor => _statusColor;
  Color get borderColor => _borderColor;
  bool get isVerifying => _isVerifying;
  bool get hasError => _hasError;

  void verifying() {
    _isVerifying = true;
    notifyListeners();
  }

  void autoFillOTPFields(String otp) {
    _textEditingController.text = otp;
    notifyListeners();
  }

  void validateAndVerifyOTP(bool hasError) {
    if (hasError) {
      _statusColor = const Color.fromARGB(255, 255, 188, 183);
      _errorController.add(ErrorAnimationType.shake);
      _hasError = true;
      _isVerifying = false;
    } else {
      _statusColor = Colors.green[200]!;
      _borderColor = Colors.green[500]!;
    }

    notifyListeners();
  }

  void onChange() {
    _hasError = false;
    _statusColor = kPrimaryFormFieldColor;
    notifyListeners();
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/providers.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
part 'otp_widget.freezed.dart';

@freezed
class OTPStream with _$OTPStream {
  const factory OTPStream.receivedOTPSMS(String otp) = _ReceivedSMS;
}

class OTP extends ConsumerStatefulWidget {
  const OTP({required this.onCompleted, this.receivedOTPSMS, Key? key}) : super(key: key);
  final Function(String?, Function(bool)) onCompleted;
  final Stream<OTPStream>? receivedOTPSMS;

  @override
  ConsumerState<OTP> createState() => _OTPState();
}

class _OTPState extends ConsumerState<OTP> {
  StreamSubscription<OTPStream>? _streamSubscription;

  @override
  void initState() {
    super.initState();
    _streamSubscription = widget.receivedOTPSMS?.listen((event) {
      event.when(receivedOTPSMS: (otp) {
        ref.watch(otpControllerProvider).autoFillOTPFields(otp);
        // ref.watch(otpControllerProvider).validateAndVerifyOTP(false);
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _otpController = ref.watch(otpControllerProvider);
    final _phoneAuthController = ref.watch(phoneAuthControllerProvider);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                'Verification Code',
                style: kHeadingTextStlye.copyWith(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'A verification code was sent to your phone number.',
                style: kParagraphTextStlye,
              ),
              const SizedBox(height: 20),
              IgnorePointer(
                ignoring: _otpController.isVerifying,
                child: PinCodeTextField(
                  autoDisposeControllers: false,
                  textStyle: kHeadingOneTextStyle.copyWith(fontWeight: FontWeight.w600),
                  controller: _otpController.textEditingController,
                  enableActiveFill: true,
                  appContext: context,
                  length: 6,
                  onChanged: (_) => _otpController.onChange(),
                  errorAnimationController: _otpController.errorController,
                  onCompleted: (value) {
                    _otpController.verifying();
                    widget.onCompleted(value, _otpController.validateAndVerifyOTP);
                  },
                  autoFocus: true,
                  autoDismissKeyboard: true,
                  cursorColor: kPrimaryColor,
                  keyboardType: TextInputType.number,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  pinTheme: PinTheme(
                    activeColor: _otpController.borderColor,
                    inactiveColor: _otpController.borderColor,
                    selectedColor: _otpController.borderColor,
                    activeFillColor: _otpController.statusColor,
                    inactiveFillColor: kPrimaryCardColor,
                    selectedFillColor: kPrimaryCardColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 50,
                    fieldWidth: 50,
                    // fieldOuterPadding: EdgeInsets.all(4),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  const Text(
                    'Didn\'t receive a verification code?',
                    style: kSubtitleTextStlye,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_phoneAuthController.smsTimeOut == 30) {
                        _phoneAuthController.verifyPhoneNumber();
                      }
                    },
                    child: Text(
                      _phoneAuthController.smsTimeOut == 30 ? 'Resend' : _phoneAuthController.smsTimeOut.toString(),
                      style: kSubtitleTextStlye.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ],
      ),
    );
  }
}

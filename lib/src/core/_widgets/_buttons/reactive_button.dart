import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/core/_services/internet_connection_service.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
part 'reactive_button.freezed.dart';

@freezed
class ReactiveButtonState with _$ReactiveButtonState {
  const factory ReactiveButtonState.buttonEnabled({required String text, VoidCallback? onPressed}) = _ButtonEnabled;
  const factory ReactiveButtonState.buttonDisabled({required String text, VoidCallback? onPressed}) = _ButtonDisabled;
  const factory ReactiveButtonState.loading({required String text, VoidCallback? onPressed}) = _Loading;
}

class ReactiveButton extends StatefulWidget {
  final ReactiveButtonState buttonState;
  final String buttonText;

  const ReactiveButton({
    Key? key,
    this.buttonState = const ReactiveButtonState.buttonEnabled(text: ''),
    this.buttonText = '',
  }) : super(key: key);

  @override
  State<ReactiveButton> createState() => _ReactiveButtonState();
}

class _ReactiveButtonState extends State<ReactiveButton> {
  final InternetConnectionService _internetConnectionService = getIt<InternetConnectionService>();
  late StreamSubscription _streamSubscription;
  bool isDisabled = false;

  @override
  void initState() {
    super.initState();

    _streamSubscription = _internetConnectionService.internetStream.listen((event) {
      event.when(
        noConnection: () {
          setState(() {
            isDisabled = true;
          });
        },
        connection: () {
          setState(() {
            isDisabled = false;
          });
        },
      );
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.buttonState.when(
        buttonEnabled: (text, onPressed) => isDisabled ? null : onPressed,
        buttonDisabled: (_, __) => null,
        loading: (_, __) => null,
      ),
      color: kPrimaryColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      disabledColor: kPrimaryButtonDisabledColor,
      disabledTextColor: kPrimaryFormFieldBorderColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 14,
      ),
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.buttonState.when(
            buttonEnabled: (text, _) => Text(
              text.isEmpty ? widget.buttonText : text,
              style: kButtonTextStlye,
            ),
            buttonDisabled: (text, _) => Text(
              text,
              style: kButtonTextStlye,
            ),
            loading: (text, _) {
              return Row(
                children: [
                  Text(
                    text,
                    style: kButtonTextStlye,
                  ),
                  const SizedBox(width: 20),
                  const SizedBox(
                    height: 10,
                    width: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

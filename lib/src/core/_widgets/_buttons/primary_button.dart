import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/core/_services/internet_connection_service.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final double elevation;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    required this.buttonText,
    this.buttonColor = kPrimaryColor,
    this.buttonTextColor = Colors.white,
    this.elevation = 1,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      elevation: elevation,
      onPressed: onPressed,
      color: buttonColor,
      textColor: buttonTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      disabledColor: kPrimaryButtonDisabledColor,
      disabledTextColor: kPrimaryFormFieldBorderColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 14,
      ),
      height: 56,
      child: Text(
        buttonText,
        style: kButtonTextStlye.copyWith(
          color: buttonTextColor,
        ),
      ),
    );
  }
}

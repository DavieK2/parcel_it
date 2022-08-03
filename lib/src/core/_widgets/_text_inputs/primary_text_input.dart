import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class PrimaryTextInput extends StatelessWidget {
  const PrimaryTextInput({
    Key? key,
    this.keyboardType,
    required this.hintText,
    this.initialValue,
    this.fillColor,
    this.focusNode,
    this.onChange,
    this.textInputAction,
    required this.controller,
    this.borderRadius = 8,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
    this.prefixIcon,
  }) : super(key: key);

  final TextInputType? keyboardType;
  final String hintText;
  final String? initialValue;
  final Color? fillColor;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Function(String)? onChange;
  final TextEditingController controller;
  final double borderRadius;
  final EdgeInsets contentPadding;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (string) => onChange!(string),
      focusNode: focusNode,
      initialValue: initialValue,
      cursorColor: kPrimaryColor,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        // prefixIconColor: kLightGreyColor,
        prefixIcon: prefixIcon,
        contentPadding: contentPadding,
        errorStyle: const TextStyle(
          fontSize: 12,
          height: 0,
        ),
        filled: true,
        fillColor: fillColor ?? kPrimaryFormFieldColor,
        hintText: hintText,
        hintStyle: kParagraphTextStlye.copyWith(
          color: kLightGreyColor.withOpacity(0.6),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: fillColor ?? kPrimaryFormFieldColor,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fillColor ?? kPrimaryFormFieldBorderColor,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fillColor ?? kPrimaryFormFieldFocusedColor,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}

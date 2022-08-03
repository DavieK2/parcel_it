import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class PillButton extends StatelessWidget {
  const PillButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: kTertiaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: child,
      ),
    );
  }
}

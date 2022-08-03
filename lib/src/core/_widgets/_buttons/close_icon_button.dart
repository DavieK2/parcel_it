import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        Iconsax.close_square,
        size: 28,
        color: kIconColor,
      ),
    );
  }
}

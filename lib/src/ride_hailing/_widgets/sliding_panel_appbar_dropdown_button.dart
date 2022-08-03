import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/pill_button.dart';

class SlidingPanelAppBarDropDownButton extends StatelessWidget {
  const SlidingPanelAppBarDropDownButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kPrimaryFormFieldColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: kPrimaryFormFieldFocusedColor.withOpacity(0.5),
                  child: const Icon(
                    Iconsax.location5,
                    size: 20,
                    color: kIconColor,
                  ),
                ),
                const SizedBox(width: 14),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'Where to?',
                    style: kHeadingTextStlye.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            PillButton(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Iconsax.clock5),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Now',
                    style: kParagraphTextStlye.copyWith(
                      fontWeight: FontWeight.w700,
                      color: kIconColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Iconsax.arrow_down_1, size: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

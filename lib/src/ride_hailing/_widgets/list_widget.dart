import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.separator = false,
    required this.onTap,
  }) : super(key: key);
  final Widget leading;
  final Widget title;
  final Widget? subtitle;
  final bool separator;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0),
      child: InkWell(
        // containedInkWell: false,
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
        // highlightShape: BoxShape.rectangle,
        splashColor: Colors.grey.withOpacity(0.2),
        focusColor: kPrimaryFormFieldColor.withOpacity(0.2),
        highlightColor: kPrimaryFormFieldColor.withOpacity(0.4),
        hoverColor: kPrimaryFormFieldColor.withOpacity(0.2),
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading,
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title,
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: subtitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // if (separator) const Divider(),
          ],
        ),
      ),
    );
  }
}

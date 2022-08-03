import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class LocationListTile extends StatelessWidget {
  const LocationListTile({
    Key? key,
    required this.text,
    required this.subtitle,
  }) : super(key: key);
  final String text;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 2, left: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Iconsax.location_add5,
                color: kPrimaryColor,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      text,
                      style: kParagraphTextStlye.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: kIconColor,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: kParagraphTextStlye.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Iconsax.arrow_right_3,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

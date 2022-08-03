import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class CardWithIcon extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;

  const CardWithIcon({
    required this.icon,
    required this.title,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: kAppBarSubtitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: kGreyColor,
                      ),
                    ),
                    // const SizedBox(height: 4),
                    Text(
                      text,
                      style: kParagraphTextStlye.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
                Icon(
                  icon,
                  color: kSecondaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

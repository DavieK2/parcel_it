import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class ServicesCard extends ConsumerWidget {
  final String text;
  final String image;
  final bool isLoading;
  final VoidCallback onTap;
  const ServicesCard({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Bounce(
      duration: const Duration(milliseconds: 150),
      onPressed: onTap,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              if (isLoading)
                const SizedBox(
                  height: 68,
                  width: 68,
                  child: CircularProgressIndicator(
                    backgroundColor: kPrimaryCardColor,
                    color: kPrimaryColor,
                    strokeWidth: 2,
                  ),
                ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.all(4),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: isLoading ? Colors.transparent : kPrimaryColor,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(99, 170, 183, 219),
                    image: DecorationImage(
                      image: AssetImage('assets/image_icons/$image.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: kParagraphTextStlye.copyWith(
              fontSize: 14,
              color: kBlackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

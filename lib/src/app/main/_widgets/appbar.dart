import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/app/main/_controller/appbar_controller.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

PreferredSizeWidget appBar(AppBarController appBarController) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
    toolbarHeight: 64,
    elevation: 0,
    backgroundColor: kPrimaryColor,
    foregroundColor: Colors.transparent,
    centerTitle: true,
    leadingWidth: 48,
    leading: const SizedBox(
      width: 8,
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 16,
        ),
      ),
    ),
    title: Column(
      children: [
        Text(
          'Current Location',
          style: kAppBarSubtitleTextStyle.copyWith(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        Text(
          appBarController.userLocation ?? 'Loading',
          style: kAppBarTitleTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: kTertiaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Iconsax.sms_notification5,
                  color: kPrimaryColor,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

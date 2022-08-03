import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:shimmer/shimmer.dart';

class RidesTileWidget extends StatelessWidget {
  const RidesTileWidget({
    Key? key,
    required this.rideName,
    required this.totalPassengers,
    required this.ridePrice,
    required this.rideDuration,
    required this.selectedRide,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final String rideName;
  final String image;
  final String selectedRide;
  final int totalPassengers;
  final int ridePrice;
  final int rideDuration;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      decoration: BoxDecoration(
        color: selectedRide == rideName ? const Color.fromARGB(55, 161, 179, 228) : Colors.white,
        border: Border(
          left: BorderSide(
            width: selectedRide == rideName ? 4 : 0,
            color: kPrimaryColor,
          ),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          splashColor: Colors.grey.withOpacity(0.2),
          focusColor: kPrimaryFormFieldColor.withOpacity(0.2),
          highlightColor: kPrimaryFormFieldColor.withOpacity(0.4),
          hoverColor: kPrimaryFormFieldColor.withOpacity(0.2),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              left: selectedRide == rideName ? 12 : 16,
              right: 20,
              top: 16,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/image_icons/$image.png',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              rideName,
                              style: kParagraphTextStlye.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.5,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              Icons.person,
                              color: kGreyColor,
                              size: 19,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              totalPassengers.toString(),
                              style: kAppBarSubtitleTextStyle.copyWith(
                                fontSize: 13,
                                color: kGreyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'in $rideDuration mins',
                          style: kSubtitleTextStlye.copyWith(
                            color: kGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '₦' + ridePrice.toString(),
                      style: kParagraphTextStlye.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RidesTileLoading extends StatelessWidget {
  const RidesTileLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kPrimaryFormFieldColor,
      highlightColor: kTertiaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(backgroundColor: kPrimaryFormFieldColor),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16,
                        width: 150,
                        decoration: BoxDecoration(
                          color: kPrimaryFormFieldColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 16,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryFormFieldColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 16,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryFormFieldColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

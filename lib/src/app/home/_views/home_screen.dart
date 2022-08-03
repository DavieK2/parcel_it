import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/app/home/_widgets/card_with_icon.dart';
import 'package:parcel_it_app/src/app/home/_widgets/card_with_subtitle.dart';
import 'package:parcel_it_app/src/app/home/_widgets/services_card.dart';
import 'package:parcel_it_app/src/app/main/_controller/appbar_controller.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/core/_widgets/_text_inputs/primary_text_input.dart';
import 'package:parcel_it_app/src/providers.dart';

class Home extends ConsumerWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController _textEditingController = TextEditingController();
    final _servicesController = ref.read(servicesControllerProvider.notifier);
    final _services = ref.watch(servicesControllerProvider);
    final _appBarController = ref.watch(appBarControllerProvider);

    return CustomScrollView(
      // controller: _sc,
      slivers: [
        SliverPersistentHeader(
          delegate: SliverHeaderBar(
            buildContext: context,
            appBarController: _appBarController,
            textEditingController: _textEditingController,
          ),
          pinned: true,
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 80),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: const [
                      CardWithIcon(
                        icon: Iconsax.card_add5,
                        title: 'Payment',
                        text: 'Add a Card',
                      ),
                      SizedBox(width: 12),
                      CardWithIcon(
                        icon: Iconsax.crown5,
                        title: 'Reward Points',
                        text: '0pts',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 36),
                CarouselSlider(
                  options: CarouselOptions(
                    pageSnapping: false,
                    disableCenter: true,
                    padEnds: false,
                    viewportFraction: 0.25,
                    enableInfiniteScroll: false,
                    height: 110,
                  ),
                  items: _services.services
                      .map(
                        (service) => ServicesCard(
                          isLoading: _services.loading == service['service'] ? true : false,
                          text: service['text']!,
                          image: service['image']!,
                          onTap: () => _servicesController.onTap(service['service']!),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: Text(
                            'Restaurants you may like to visit',
                            style: kHeadingTextStlye.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlackColor,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Icon(
                          Iconsax.arrow_right5,
                          size: 18,
                          color: kBlackColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardWithSubtitle(
                            image: 'assets/images/burger.jpg',
                            title: Text(
                              'MacDonaldo Chicken',
                              style: kParagraphTextStlye.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.0 km',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Iconsax.star1,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CardWithSubtitle(
                            image: 'assets/images/food_pic.jpg',
                            title: Text(
                              'Chiken Fil A',
                              style: kParagraphTextStlye.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.0 km',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Iconsax.star1,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CardWithSubtitle(
                            image: 'assets/images/food_pic_2.jpg',
                            title: Text(
                              'Food Palace',
                              style: kParagraphTextStlye.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.0 km',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Iconsax.star1,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CardWithSubtitle(
                            image: 'assets/images/food_pic_3.jpg',
                            title: Text(
                              'Food Mart',
                              style: kParagraphTextStlye.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.0 km',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Iconsax.star1,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: kSubtitleTextStlye.copyWith(
                                    fontSize: 12,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SliverHeaderBar extends SliverPersistentHeaderDelegate {
  final BuildContext buildContext;
  final AppBarController appBarController;
  final TextEditingController textEditingController;
  late double _expandedHeight;

  SliverHeaderBar({
    required this.buildContext,
    required this.appBarController,
    required this.textEditingController,
  }) {
    _expandedHeight = MediaQuery.of(buildContext).size.height * 0.32;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double _width = MediaQuery.of(context).size.width;
    final double _opacity = (1 - ((shrinkOffset / (maxExtent - minExtent)))).clamp(0, 1);

    return SizedBox(
      height: _expandedHeight,
      child: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              // padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 30),
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.blue,
                    kPrimaryColor,
                  ],
                  center: Alignment.topRight,
                  radius: 1,
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Opacity(
                  opacity: _opacity > 0.5 ? 1 : (_opacity - 0.3).clamp(0, 1),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 24, top: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: _width * 0.6,
                            child: Text(
                              'Get to where you need to be without hassle!',
                              style: kParagraphTextStlye.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        width: 130,
                        child: SizedBox(
                          width: _width * 0.4,
                          child: Image.asset(
                            'assets/image_icons/car.png',
                            width: 130,
                            height: 130,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: kBlackColor.withOpacity(0.17),
                        blurRadius: 10,
                        spreadRadius: -1,
                        blurStyle: BlurStyle.normal,
                      )
                    ],
                  ),
                  child: PrimaryTextInput(
                    hintText: 'Search your favorite places',
                    controller: textEditingController,
                    contentPadding: const EdgeInsets.all(20),
                    borderRadius: 10,
                    fillColor: Colors.white,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 8.0, bottom: 4),
                      child: Icon(
                        Iconsax.search_normal_1,
                        color: kLightGreyColor,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 110,
            child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
              ),
              toolbarHeight: 64,
              elevation: 0,
              backgroundColor: Colors.transparent,
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
                    appBarController.userLocation ?? 'Loading...',
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
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => _expandedHeight;

  @override
  double get minExtent => 180;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}

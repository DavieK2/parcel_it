import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class ActivityScreen extends ConsumerStatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List _tabs = ['Activities', 'Rides', 'Express'];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // final TabController _tabController = TabController(length: length, vsync: vsync)
    return Column(
      children: [
        SizedBox(
          height: 175,
          child: AppBar(
            shadowColor: kBlackColor.withOpacity(0.2),
            title: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('My Activity', style: kHeadingOneTextStyle.copyWith(fontSize: 22)),
            ),
            backgroundColor: Colors.white,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.zero,
                    indicatorWeight: 0,
                    unselectedLabelColor: kLightGreyColor,
                    labelStyle: kSubtitleTextStlye.copyWith(fontWeight: FontWeight.w600),
                    indicatorColor: kPrimaryColor,
                    labelPadding: EdgeInsets.zero,
                    padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    labelColor: kPrimaryColor,
                    splashBorderRadius: BorderRadius.circular(50),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kPrimaryCardColor,
                    ),
                    tabs: _tabs
                        .map((tab) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 80),
                                child: Tab(
                                  height: 32,
                                  iconMargin: EdgeInsets.zero,
                                  child: Text(tab),
                                ),
                              ),
                            ))
                        .toList()),
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/list.svg',
                    height: 200,
                  ),
                  Text(
                    'You currently have no activities',
                    style: kParagraphTextStlye.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Find out what\'s new on the app!',
                    style: kParagraphTextStlye.copyWith(color: kGreyColor),
                  ),
                ],
              ),
              Column(children: [
                const SizedBox(height: 100),
                Text(
                  'No Bookings yet',
                  style: kParagraphTextStlye.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64,
                    vertical: 20,
                  ),
                  child: Text(
                    'You don\'t have any completed rides for us to show. Take your first ride today!',
                    style: kParagraphTextStlye.copyWith(color: kGreyColor),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
              Column(children: [
                const SizedBox(height: 100),
                Text(
                  'No Deliveries yet',
                  style: kParagraphTextStlye.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64,
                    vertical: 20,
                  ),
                  child: Text(
                    'You don\'t have any completed deliveries for us to show.',
                    style: kParagraphTextStlye.copyWith(color: kGreyColor),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

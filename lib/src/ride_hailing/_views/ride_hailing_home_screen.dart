import 'package:flutter/material.dart';
import 'package:grouped_list/sliver_grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/close_icon_button.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/reactive_button.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/connectivity_widget.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/sliding_panel_widget.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/sliding_up_panel.dart';
import 'package:parcel_it_app/src/providers.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/circular_button.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/address_search_controller.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/ride_hailing_controller.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/list_widget.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/loading_list.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/location_list_tile.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/map.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/rides_tile.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/sliding_panel_app_bar_body.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/sliding_panel_appbar_dropdown_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class RideHailingHomeScreen extends StatelessWidget {
  const RideHailingHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('rebuild Ride Hailing HomeScreem');

    return ConnectivityWidget(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: HookConsumer(builder: (context, ref, __) {
          final _addressSearchController = ref.watch(addressSearchController.notifier);

          final TextEditingController _pickUpLocationTextEditingController =
              _addressSearchController.pickUpLocationTextEditingController;
          final TextEditingController _dropOffLocationTextEditingController =
              _addressSearchController.dropOffLocationTextEditingController;

          final FocusNode _pickUpInputFocusNode = _addressSearchController.pickUpLocationFocusNode;
          final FocusNode _dropOffInputFocusNode = _addressSearchController.dropLocationFocusNode;

          final _spProps = ref.watch(rideHailingControllerProvider).slidingPanelProperties;
          final _rideHailingState = ref.watch(rideHailingControllerProvider);
          final PanelController _panelController =
              ref.watch(rideHailingControllerProvider.notifier).slidingPanelController;

          ScrollController _scrollController = ScrollController();

          return WillPopScope(
            onWillPop: () => ref.watch(rideHailingControllerProvider.notifier).willPop(),
            child: SlidingPanelWidget(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              minHeight: _spProps.minHeight,
              appbarHeight: _spProps.appBarHeight,
              showDraggableHandle: _spProps.showDragHandle,
              isDraggable: ref.watch(isSlidingPanelDraggable),
              controller: _panelController,
              body: Stack(
                children: [
                  MapSample(),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: CircularButton(
                        height: 45,
                        width: 45,
                        child: const Icon(
                          Iconsax.arrow_left_1,
                          color: kIconColor,
                        ),
                        onTap: _rideHailingState.when(
                          loading: (_) {
                            return _panelController.close;
                          },
                          initial: (_) => _panelController.close,
                          userHasSelectedDropLocation: (_) => _panelController.close,
                          confirmPickUp: (_) => _panelController.close,
                          searchingForDrivers: (_) => _panelController.close,
                          driverFound: (_) => _panelController.close,
                          noDriverFound: (_) => _panelController.close,
                          rideHasStarted: (_) => _panelController.close,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              panelContent: (scrollController) {
                _scrollController = scrollController;

                return _rideHailingState.when(
                  loading: (_) {
                    return SizedBox();
                  },
                  initial: (_) {
                    return _Initial(
                      panelController: _panelController,
                      scrollController: scrollController,
                    );
                  },
                  userHasSelectedDropLocation: (_) {
                    return _UserHasSelectedDropLocation(
                      scrollController: scrollController,
                      panelController: _panelController,
                    );
                  },
                  confirmPickUp: (_) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm pickup spot',
                            style: kHeadingOneTextStyle.copyWith(fontSize: 22),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Drag map or edit address to set your pickup',
                            style: kParagraphTextStlye,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: kLightGreyColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Iconsax.search_normal,
                                  color: kPrimaryColor,
                                ),
                                const SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Location',
                                      style: kSubtitleTextStlye,
                                    ),
                                    Text(
                                      'User Pick Up Location',
                                      style: kParagraphTextStlye,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 24,
                                  color: kBlackColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Add Note for driver',
                                  style: kParagraphTextStlye.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          ReactiveButton(
                            buttonState: ReactiveButtonState.buttonEnabled(
                              text: 'Confirm and Request',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  searchingForDrivers: (_) {
                    return const SizedBox();
                  },
                  driverFound: (_) {
                    return const SizedBox();
                  },
                  noDriverFound: (_) {
                    return const SizedBox();
                  },
                  rideHasStarted: (_) {
                    return const SizedBox();
                  },
                );
              },
              appbarBody: _rideHailingState.maybeWhen(
                initial: (_) {
                  return SlidingPanelAppBarBody(
                    pickUpInputFocusNode: _pickUpInputFocusNode,
                    dropOffInputFocusNode: _dropOffInputFocusNode,
                    pickUpLocationTextEditingController: _pickUpLocationTextEditingController,
                    dropOffLocationTextEditingController: _dropOffLocationTextEditingController,
                    pickUpInputOnchage: () {
                      _addressSearchController.getAddressFromInput(_pickUpLocationTextEditingController.text);
                    },
                    dropOffInputOnchage: () {
                      _addressSearchController.getAddressFromInput(_dropOffLocationTextEditingController.text);
                    },
                  );
                },
                orElse: () => const SizedBox(),
              ),
              appbarTitleBar: _rideHailingState.maybeWhen(
                initial: (_) {
                  return SlidingPanelAppBarTitleBar(
                    leading: CloseIconButton(onTap: () => _panelController.close()),
                    title: 'Your Trip',
                  );
                },
                userHasSelectedDropLocation: (_) {
                  return SlidingPanelAppBarTitleBar(
                    leading: GestureDetector(
                      onTap: () {
                        _scrollController.jumpTo(0);
                        _panelController.close();
                      },
                      child: const Icon(
                        Iconsax.arrow_square_down,
                        size: 28,
                      ),
                    ),
                    title: 'Rides',
                  );
                },
                orElse: () => const SizedBox(),
              ),
              bottomBarBody: const _BottomBarBody(),
              onPanelOpened: () {
                _rideHailingState.maybeWhen(
                  initial: (_) {
                    if (_pickUpLocationTextEditingController.text.isEmpty) {
                      _pickUpInputFocusNode.requestFocus();
                    } else {
                      _dropOffInputFocusNode.requestFocus();
                    }
                  },
                  orElse: () {},
                );
              },
              onPanelSlide: (position) {
                ref.watch(slidingPanelPositionProvider.notifier).state = position;

                _rideHailingState.maybeWhen(
                  initial: (_) {
                    if (position < 0.97) {
                      _dropOffInputFocusNode.unfocus();
                      _pickUpInputFocusNode.unfocus();
                    }
                  },
                  userHasSelectedDropLocation: (_) {},
                  orElse: () {},
                );
              },
              onPanelClosed: () {},
            ),
          );
        }),
      ),
    );
  }
}

class _BottomBarBody extends StatelessWidget {
  const _BottomBarBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: const [
              Icon(
                Iconsax.money5,
                color: Color(0xFF0C7E18),
                size: 28,
              ),
              SizedBox(width: 10),
              Text('Cash'),
              SizedBox(width: 5),
              Icon(
                Iconsax.arrow_down_1,
                size: 16,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: 58,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 110, 110, 110),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Iconsax.calendar_add5,
                color: Color.fromARGB(255, 110, 110, 110),
                size: 28,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Consumer(builder: (_, ref, __) {
                return ref.watch(rideHailingControllerProvider).maybeWhen(
                  userHasSelectedDropLocation: (_) {
                    final hasLoaded =
                        ref.watch(userHasSelectedDropLocationState) == UserHasSelectedDropLocationState.loaded;
                    return ReactiveButton(
                      buttonState: hasLoaded
                          ? ReactiveButtonState.buttonEnabled(
                              text: 'Book ' + ref.watch(rides)[ref.watch(selectedRideIndex)]['rideName'],
                              onPressed: ref.watch(rideHailingControllerProvider.notifier).selectRide,
                            )
                          : const ReactiveButtonState.buttonDisabled(
                              text: 'Loading...',
                            ),
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial({
    Key? key,
    required this.panelController,
    required this.scrollController,
  }) : super(key: key);

  final PanelController panelController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    print('Rebuilt From Initial');
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SlidingPanelAppBarDropDownButton(onPressed: panelController.open),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const LocationListTile(
                text: 'Add Home',
                subtitle: 'Save your home address',
              ),
              const Divider(
                height: 24,
                thickness: 1.3,
                color: kTertiaryColor,
              ),
              GestureDetector(
                onTap: () => print('Add Office'),
                child: const LocationListTile(
                  text: 'Add Office',
                  subtitle: 'Save your work address',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Consumer(
          builder: (_, ref, __) {
            final _addressSearch = ref.watch(addressSearchController);

            return _addressSearch.when(
              initial: (_) => Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  // padding: const EdgeInsets.only(top: 250, bottom: 60),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: LocationListTile(
                          text: 'Add Home',
                          subtitle: 'Save your home address',
                        ),
                      ),
                      const Divider(
                        height: 24,
                        thickness: 1.3,
                        color: kTertiaryColor,
                      ),
                      GestureDetector(
                        onTap: () => print('Add Office'),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: LocationListTile(
                            text: 'Add Office',
                            subtitle: 'Save your work address',
                          ),
                        ),
                      ),
                      const Divider(
                        height: 24,
                        thickness: 1.3,
                        color: kTertiaryColor,
                      ),
                      ListWidget(
                        onTap: () {
                          ref.watch(rideHailingControllerProvider.notifier).selectLocation('');
                        },
                        title: Text(
                          'Unnamed Road, Somewhere',
                          style: kParagraphTextStlye.copyWith(
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Lagos Island',
                          style: kSubtitleTextStlye.copyWith(
                            fontSize: 13,
                            color: kGreyColor,
                          ),
                        ),
                        leading: const Icon(
                          Iconsax.location5,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              loading: () => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    // padding: const EdgeInsets.only(top: 250, bottom: 60),
                    child: Column(
                      children: const [
                        LoadingList(),
                        LoadingList(),
                        LoadingList(),
                        LoadingList(),
                        LoadingList(),
                      ],
                    ),
                  ),
                ),
              ),
              loaded: (searchResults) => Expanded(
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 60, top: 0),
                  controller: scrollController,
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    return ListWidget(
                      onTap: () {
                        ref.watch(rideHailingControllerProvider.notifier).selectLocation(searchResults[index]);
                      },
                      title: Text(
                        searchResults[index],
                        style: kParagraphTextStlye.copyWith(
                          color: kBlackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Lagos Island',
                        style: kSubtitleTextStlye.copyWith(
                          fontSize: 13,
                          color: kGreyColor,
                        ),
                      ),
                      leading: const Icon(
                        Iconsax.location5,
                        color: Colors.redAccent,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _UserHasSelectedDropLocation extends StatelessWidget {
  const _UserHasSelectedDropLocation({
    Key? key,
    required this.scrollController,
    required this.panelController,
  }) : super(key: key);

  final ScrollController scrollController;
  final PanelController panelController;

  @override
  Widget build(BuildContext context) {
    print('Rebuilt From User Has Selected Drop Location');

    return LayoutBuilder(builder: (context, c) {
      return HookConsumer(
        builder: (_, ref, __) {
          final _rides = ref.watch(rides);
          final _panelPosition = ref.watch(slidingPanelPositionProvider);
          final double _panelPadding = _panelPosition < 0.06 ? (c.maxHeight - 245) : 80;
          final _userHasSelectedDropLocationState = ref.watch(userHasSelectedDropLocationState);
          final _selectedRideIndex = ref.watch(selectedRideIndex);

          double _topMargin = 40 * _panelPosition;
          double _categoryContainerHeight = 60 * _panelPosition;
          double _categoryContainerTopPadding = 16 * _panelPosition;

          bool _canScroll = ref.watch(canScroll);
          bool _isLoading = _userHasSelectedDropLocationState == UserHasSelectedDropLocationState.loading;

          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: AnimatedOpacity(
                      opacity: _isLoading ? 1 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          RidesTileLoading(),
                          RidesTileLoading(),
                          RidesTileLoading(),
                          RidesTileLoading(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              AnimatedOpacity(
                opacity: _isLoading ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: CustomScrollView(
                  key: const PageStorageKey('rides'),
                  controller: scrollController,
                  physics: _canScroll
                      ? const ClampingScrollPhysics(parent: FixedExtentScrollPhysics())
                      : const NeverScrollableScrollPhysics(),
                  // physics: const ClampingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: _topMargin,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        height: 36,
                        child: Text(
                          'Select or swipe to see more rides',
                          style: kSubtitleTextStlye.copyWith(
                            fontSize: 13,
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: _panelPadding),
                      sliver: SliverGroupedListView<Map<String, dynamic>, String>(
                        sort: false,
                        elements: _rides,
                        groupBy: (rides) => rides['rideType'],
                        groupSeparatorBuilder: (rideType) {
                          return Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: _categoryContainerTopPadding),
                            height: _categoryContainerHeight,
                            width: double.maxFinite,
                            // color: kPrimaryColor,
                            alignment: Alignment.centerLeft,

                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: _panelPosition < 0.1 ? Colors.transparent : kPrimaryFormFieldColor,
                                ),
                              ),
                            ),
                            child: Text(
                              rideType.toUpperCase(),
                              style: kParagraphTextStlye.copyWith(
                                fontWeight: FontWeight.bold,
                                color: kGreyColor,
                              ),
                            ),
                          );
                        },
                        indexedItemBuilder: (context, rides, index) {
                          return RidesTileWidget(
                            image: rides['icon'],
                            selectedRide: _rides[_selectedRideIndex]['rideName'],
                            rideName: rides['rideName'],
                            rideDuration: 5,
                            ridePrice: 500,
                            totalPassengers: rides['totalPassengers'],
                            onTap: () {
                              // print(_height);
                              ref.watch(selectedRideIndex.notifier).state = index;
                              panelController.close();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      );
    });
  }
}

class SlidingPanelAppBarTitleBar extends StatelessWidget {
  const SlidingPanelAppBarTitleBar({
    Key? key,
    required this.title,
    required this.leading,
  }) : super(key: key);

  final String title;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        leading,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Text(
                  title,
                  style: kParagraphTextStlye.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kIconColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

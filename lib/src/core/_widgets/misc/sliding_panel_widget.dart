import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/internet_connection_service.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/sliding_up_panel.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/ride_hailing_controller.dart';
import 'package:parcel_it_app/src/ride_hailing/_widgets/loading_list.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

final canScroll = StateProvider.autoDispose<bool>((_) => false);
final isSlidingPanelDraggable = StateProvider<bool>((ref) => true);
final slidingPanelPositionProvider = StateProvider<double>((ref) => 0.0);
final openBottomBar = StateProvider.autoDispose<bool>((_) => false);
final showBottomBar = StateProvider.autoDispose<bool>((_) => false);
final hasShownBottonBar = StateProvider.autoDispose<bool>((_) => false);

class SlidingPanelWidget extends ConsumerStatefulWidget {
  const SlidingPanelWidget({
    Key? key,
    required this.controller,
    required this.body,
    required this.panelContent,
    required this.appbarTitleBar,
    required this.appbarBody,
    this.minHeight = 0.31,
    this.onPanelOpened,
    this.onPanelClosed,
    required this.isDraggable,
    this.onPanelSlide,
    this.appbarHeight = 250,
    this.bottomBarBody = const SizedBox(),
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
    this.showDraggableHandle = true,
  }) : super(key: key);

  final PanelController controller;
  final Widget body;
  final double appbarHeight;
  final double minHeight;
  final VoidCallback? onPanelOpened;
  final VoidCallback? onPanelClosed;
  final Widget Function(ScrollController) panelContent;
  final Widget appbarTitleBar;
  final Widget appbarBody;
  final Widget bottomBarBody;
  final bool isDraggable;
  final Function(double)? onPanelSlide;

  final EdgeInsets padding;
  final bool showDraggableHandle;

  @override
  ConsumerState<SlidingPanelWidget> createState() => _SlidingPanelWidgetState();
}

class _SlidingPanelWidgetState extends ConsumerState<SlidingPanelWidget> {
  final StreamController<double> _slidingPosition = PublishSubject();
  late ScrollController _scrollController;

  bool _isInternet = true;
  double height = 0;

  bool _hasScrolledToIndex = false;

  void _onPanelSlide(double position) {
    double _scrollPosition = (ref.watch(selectedRideIndex)) * 80;

    if (_scrollController.hasClients) {
      final _maxScrollExtent = _scrollController.position.maxScrollExtent;
      final _minScrollExtent = _scrollController.position.minScrollExtent;

      if (_scrollPosition < _minScrollExtent) _scrollPosition = _minScrollExtent;
      if (_scrollPosition > _maxScrollExtent) _scrollPosition = _maxScrollExtent;

      if (!_hasScrolledToIndex) {
        _scrollController.jumpTo(_scrollPosition);
      }

      if (position == 0) _hasScrolledToIndex = true;

      if (position == 1) {
        _scrollController.jumpTo(_scrollPosition);
      }
    }

    if (position > 0.99) {
      ref.watch(canScroll.notifier).state = true;
    }

    if (position < 0.99) {
      ref.watch(canScroll.notifier).state = false;
    }

    if (position > 0.05 && _hasScrolledToIndex) _hasScrolledToIndex = false;

    // if (position == 1) {
    //   Future.delayed(const Duration(milliseconds: 500), () => _scrollController.jumpTo(_scrollPosition));
    // }
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuilt From Sliding Panel Widget');

    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SlidingUpPanel(
            backdropEnabled: true,
            backdropOpacity: 0.8,
            isDraggable: widget.isDraggable,
            // isDraggable: false,
            controller: widget.controller,
            minHeight: widget.minHeight,
            maxHeight: constraints.maxHeight,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            padding: widget.padding,
            body: widget.body,
            onPanelClosed: widget.onPanelClosed,
            onPanelOpened: widget.onPanelOpened,
            onPanelSlide: (position) {
              _onPanelSlide(position);
              _slidingPosition.sink.add(position);
              widget.onPanelSlide!(position);
            },
            panelBuilder: (controller) {
              _scrollController = controller;

              if (_isInternet) {
                //return Stack(
                //   children: [
                //     IgnorePointer(
                //       ignoring: widget.controller.panelPosition == 1 ? false : true,
                //       child: Opacity(
                //         opacity: 1,
                //         child: Column(
                //           children: [
                //             widget.panelOpenedContent(controller),
                //           ],
                //         ),
                //       ),
                //     ),
                //     IgnorePointer(
                //       ignoring: widget.controller.panelPosition == 0 ? false : true,
                //       child: Opacity(
                //         opacity: 1,
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Center(
                //               child: Container(
                //                 height: 6,
                //                 width: 40,
                //                 decoration: BoxDecoration(
                //                   color: kPrimaryFormFieldColor,
                //                   borderRadius: BorderRadius.circular(100),
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(height: 20),
                //             widget.panelCollapsedContent(controller),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // );

                return Column(
                  children: [
                    if (widget.showDraggableHandle)
                      Center(
                        child: Container(
                          height: 6,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(65, 161, 179, 228),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overscroll) {
                          overscroll.disallowIndicator();
                          return true;
                        },
                        child: widget.panelContent(
                          controller,
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Container(
                          height: 6,
                          width: 40,
                          decoration: BoxDecoration(
                            color: kPrimaryFormFieldColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryFormFieldColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const LoadingList(),
                      const LoadingList(),
                    ],
                  ),
                );
              }
            },
          ),
          TopBar(
            height: widget.appbarHeight,
            appBarTitleBar: widget.appbarTitleBar,
            appBarBody: widget.appbarBody,
            appBarController: _slidingPosition.stream,
          ),
          BottomBar(
            bottomBarBody: widget.bottomBarBody,
            bottomBarController: _slidingPosition.stream,
            openBottomBar: ref.watch(openBottomBar),
          ),
        ],
      );
    });
  }
}

class BottomBar extends ConsumerStatefulWidget {
  const BottomBar({
    Key? key,
    required this.bottomBarBody,
    required this.bottomBarController,
    required this.openBottomBar,
  }) : super(key: key);

  final Widget bottomBarBody;
  final Stream<double> bottomBarController;
  final bool openBottomBar;

  @override
  ConsumerState<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends ConsumerState<BottomBar> with SingleTickerProviderStateMixin {
  double _bottomPosition = -135;
  late StreamSubscription _streamSubscription;
  late AnimationController _ac;
  late Animation<double> _position;
  bool _hasShownBottomBar = false;

  @override
  void initState() {
    super.initState();

    _ac = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _position = Tween<double>(begin: _bottomPosition, end: 0).chain(CurveTween(curve: Curves.easeIn)).animate(_ac);

    _streamSubscription = widget.bottomBarController.listen((panelPosition) {
      setState(() {
        _bottomPosition = -80 * panelPosition;
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    _ac.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(showBottomBar, (previous, next) {
      if (next) {
        _ac.forward();
        Future.delayed(const Duration(milliseconds: 300), () => setState(() => _hasShownBottomBar = true));
      }
      if (previous!) {
        _ac.reverse();
        Future.delayed(const Duration(milliseconds: 300), () => setState(() => _hasShownBottomBar = false));
      }
    });

    ref.listen<bool>(openBottomBar, (previous, next) {
      if (next) _ac.forward();
    });

    return AnimatedBuilder(
        animation: _ac,
        builder: (context, _) {
          return Positioned(
            left: 0,
            right: 0,
            bottom: _hasShownBottomBar && !widget.openBottomBar ? _bottomPosition : _position.value,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              height: 135,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -5),
                    color: kPrimaryFormFieldColor.withOpacity(0.4),
                    blurRadius: 10,
                    spreadRadius: -1,
                    blurStyle: BlurStyle.normal,
                  )
                ],
              ),
              child: widget.bottomBarBody,
            ),
          );
        });
  }
}

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
    required this.height,
    required this.appBarTitleBar,
    required this.appBarBody,
    required this.appBarController,
  }) : super(key: key);

  final double height;
  final Widget appBarTitleBar;
  final Widget appBarBody;
  final Stream<double> appBarController;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  late double _appBarPosition;
  BoxShadow _appbarBoxShadow = const BoxShadow(color: Colors.transparent);

  @override
  void initState() {
    super.initState();
    _appBarPosition = -widget.height;
    widget.appBarController.listen((event) {
      _onPanelSlide(event);
    });
  }

  void _onPanelSlide(double position) {
    setState(() {
      _appBarPosition = (widget.height * position) - widget.height;

      _appbarBoxShadow = position > 0.9
          ? BoxShadow(
              offset: const Offset(0, 5),
              color: kPrimaryFormFieldColor.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: -1,
              blurStyle: BlurStyle.normal,
            )
          : const BoxShadow(color: Colors.transparent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _appBarPosition,
      width: MediaQuery.of(context).size.width,
      height: widget.height,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [_appbarBoxShadow],
        ),
        child: SafeArea(
          child: Column(
            children: [
              widget.appBarTitleBar,
              // const SizedBox(height: 20),
              widget.appBarBody,
            ],
          ),
        ),
      ),
    );
  }
}

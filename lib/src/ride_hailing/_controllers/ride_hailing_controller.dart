import 'dart:async';
import 'dart:convert';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/sliding_panel_widget.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/sliding_up_panel.dart';
import 'package:parcel_it_app/src/location/_events/location_service_event.dart';
import 'package:parcel_it_app/src/location/_services/location_service.dart';
import 'package:parcel_it_app/src/providers.dart';
import 'package:rxdart/subjects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'ride_hailing_controller.freezed.dart';

enum UserHasSelectedDropLocationState {
  loading,
  loaded,
}

final selectedRideIndex = StateProvider<int>((_) => 0);
final userHasSelectedDropLocationState = StateProvider.autoDispose<UserHasSelectedDropLocationState>(
  (ref) => UserHasSelectedDropLocationState.loading,
);

final rides = Provider.autoDispose<List<Map<String, dynamic>>>(
  (ref) => [
    {'rideName': 'Lite', 'totalPassengers': 4, 'totalPrice': 0, 'rideType': 'Popular', 'icon': 'lite'},
    {'rideName': 'Premium', 'totalPassengers': 4, 'totalPrice': 0, 'rideType': 'Popular', 'icon': 'premium'},
    {'rideName': 'Executive', 'totalPassengers': 6, 'totalPrice': 0, 'rideType': 'Popular', 'icon': 'executive'},
    {'rideName': 'Coach Lite', 'totalPassengers': 9, 'totalPrice': 0, 'rideType': 'Coach', 'icon': 'bus'},
    {'rideName': 'Coach Standard', 'totalPassengers': 13, 'totalPrice': 0, 'rideType': 'Coach', 'icon': 'bus'},
    {'rideName': 'Coach XL', 'totalPassengers': 23, 'totalPrice': 0, 'rideType': 'Coach', 'icon': 'bus'},
    {'rideName': 'Standard Taxi', 'totalPassengers': 4, 'totalPrice': 0, 'rideType': 'Transit', 'icon': 'premiumtaxi'},
    {'rideName': 'Bus Lite', 'totalPassengers': 9, 'totalPrice': 0, 'rideType': 'Transit', 'icon': 'busstandard'},
    {'rideName': 'Bus Standard', 'totalPassengers': 13, 'totalPrice': 0, 'rideType': 'Transit', 'icon': 'busstandard'},
    {'rideName': 'Bus XL', 'totalPassengers': 23, 'totalPrice': 0, 'rideType': 'Transit', 'icon': 'busstandard'},
  ],
);

class _SlidingPanelProperties {
  final double minHeight;
  final double appBarHeight;
  final bool showDragHandle;

  const _SlidingPanelProperties({
    this.minHeight = 270,
    this.appBarHeight = 250,
    this.showDragHandle = true,
  });
}

@freezed
abstract class RideHailingState with _$RideHailingState {
  const factory RideHailingState.initial({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _RideHailingInitialState;
  const factory RideHailingState.loading({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _Loading;
  const factory RideHailingState.userHasSelectedDropLocation({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _UserHasSelectedDropLocation;
  const factory RideHailingState.confirmPickUp({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _ConfirmPickUp;
  const factory RideHailingState.searchingForDrivers({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _SearchingForDrivers;
  const factory RideHailingState.driverFound({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _DriverFound;
  const factory RideHailingState.noDriverFound({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _NoDriverFound;
  const factory RideHailingState.rideHasStarted({
    @Default(_SlidingPanelProperties()) _SlidingPanelProperties slidingPanelProperties,
  }) = _RideHasStarted;
}

@injectable
class RideHailingController extends StateNotifier<RideHailingState> {
  final Reader _read;
  final SharedPreferences _localStorage;
  final EventBus _eventBus;

  final PanelController slidingPanelController = PanelController();
  final ItemScrollController itemScrollController = ItemScrollController();

  RideHailingController(@factoryParam this._read, this._eventBus, this._localStorage)
      : super(const RideHailingState.initial());

  void selectLocation(String address) {
    final _pickupLocation = _read(addressSearchController.notifier).pickUpLocationFocusNode;
    final _pickupLocationTextEditingController =
        _read(addressSearchController.notifier).pickUpLocationTextEditingController;
    final _dropLocation = _read(addressSearchController.notifier).dropLocationFocusNode;

    print(_pickupLocation.hasPrimaryFocus);
    if (_pickupLocation.hasPrimaryFocus) {
      _pickupLocationTextEditingController.text = address;
      _dropLocation.requestFocus();
    }

    if (_dropLocation.hasPrimaryFocus) {
      _pickupLocation.unfocus();
      _dropLocation.unfocus();

      Future.delayed(const Duration(milliseconds: 300), () {
        _setStateToUserHasSelectedDropLocation();
      });
    }
  }

  void selectRide() {
    _setStateToConfirmPickUp();
  }

  void getRides() {
    // _rideLite['totalPrice'] = 500;
    // _ridePremium['totalPrice'] = 500;
  }

  Future<bool> willPop() async {
    return state.when(
      initial: (_) {
        if (!(slidingPanelController.panelPosition > 0)) {
          _read(servicesControllerProvider.notifier).resetIsLoading();
          return true;
        }
        slidingPanelController.close();
        return false;
      },
      loading: (_) {
        return false;
      },
      userHasSelectedDropLocation: (_) {
        // itemScrollController.jumpTo(index: 1);
        _setStateToInitial();
        slidingPanelController.open();
        return false;
      },
      confirmPickUp: (_) {
        _setStateToUserHasSelectedDropLocation();
        return false;
      },
      searchingForDrivers: (_) {
        return false;
      },
      driverFound: (_) {
        return false;
      },
      noDriverFound: (_) {
        return false;
      },
      rideHasStarted: (_) {
        return false;
      },
    );
  }

  void onPanelSlide(double slidingPanelPosition) {
    state.maybeWhen(
      userHasSelectedDropLocation: (_) {},
      orElse: () {},
    );
  }

  void _setStateToInitial() {
    state = const RideHailingState.initial();
    state = state.copyWith(
      slidingPanelProperties: const _SlidingPanelProperties(
        appBarHeight: 250,
        minHeight: 270,
      ),
    );
    _read(isSlidingPanelDraggable.notifier).state = true;
    _read(showBottomBar.notifier).state = false;
    _read(selectedRideIndex.notifier).state = 0;
  }

  void _setStateToUserHasSelectedDropLocation() {
    slidingPanelController.close();

    state = const RideHailingState.userHasSelectedDropLocation();

    state = state.copyWith(
      slidingPanelProperties: const _SlidingPanelProperties(
        appBarHeight: 110,
        minHeight: 410,
      ),
    );

    Future.delayed(const Duration(milliseconds: 1000), () {
      _read(userHasSelectedDropLocationState.notifier).state = UserHasSelectedDropLocationState.loaded;
      _read(isSlidingPanelDraggable.notifier).state = true;
      _read(showBottomBar.notifier).state = true;

      Future.delayed(const Duration(milliseconds: 100), () => _read(hasShownBottonBar.notifier).state = true);
    });
  }

  void _setStateToConfirmPickUp() {
    _read(showBottomBar.notifier).state = false;

    Future.delayed(const Duration(milliseconds: 300), () {
      state = const RideHailingState.confirmPickUp();
      state = state.copyWith(
        slidingPanelProperties: const _SlidingPanelProperties(
          appBarHeight: 100,
          minHeight: 330,
          showDragHandle: false,
        ),
      );
      _read(isSlidingPanelDraggable.notifier).state = false;

      slidingPanelController.close();
    });
  }

  void _setStateToSearchingForDrivers() {
    state = const RideHailingState.searchingForDrivers();
  }

  void _setStateToDriverFound() {
    state = const RideHailingState.driverFound();
  }

  void _setStateToNoDriverFound() {
    state = const RideHailingState.noDriverFound();
  }

  void _setStateToRideHasStarted() {
    state = const RideHailingState.rideHasStarted();
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:parcel_it_app/src/app/home/_controller/services_controller.dart';
import 'package:parcel_it_app/src/app/main/_controller/appbar_controller.dart';
import 'package:parcel_it_app/src/app/main/_controller/bottom_navigation_controller.dart';
import 'package:parcel_it_app/src/authentication/_controllers/otp_controller.dart';
import 'package:parcel_it_app/src/authentication/_controllers/phone_auth_controller.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/address_search_controller.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/ride_hailing_controller.dart';
import 'package:parcel_it_app/src/ride_hailing/_controllers/sliding_panel_controller.dart';
import 'package:parcel_it_app/src/user/_controllers/user_controller.dart';

//Authentication Providers

final phoneAuthControllerProvider = ChangeNotifierProvider.autoDispose<PhoneAuthController>((ref) {
  return getIt<PhoneAuthController>(param1: ref.read);
});

final otpControllerProvider = ChangeNotifierProvider.autoDispose((ref) {
  ref.onDispose(() {
    ref.watch(phoneAuthControllerProvider.notifier).closeOTPDialog();
  });
  return getIt<OTPController>();
});

//homePage Providers
final appBarControllerProvider = ChangeNotifierProvider.autoDispose((ref) => getIt<AppBarController>());

final servicesControllerProvider = ChangeNotifierProvider.autoDispose((_) => getIt<ServicesController>());

final bottomNavigationControllerProvider =
    StateNotifierProvider.autoDispose<BottomNavigationController, BottomNavigationState>(
  (ref) => getIt<BottomNavigationController>(),
);

final addressSearchController = StateNotifierProvider.autoDispose<AddressSearchController, AddressSearchState>((ref) {
  return getIt<AddressSearchController>(param1: ref.read);
});

//Ride Hailing
final rideHailingControllerProvider = StateNotifierProvider.autoDispose<RideHailingController, RideHailingState>(
  (ref) => getIt<RideHailingController>(param1: ref.read),
);

final userControllerProvider = StateNotifierProvider.autoDispose<UserController, UserState>(
  (ref) => getIt<UserController>(),
);







//Misc Providers

// final slidingPanelEventProvider = Provider.autoDispose((ref) => getIt<SlidingPanelEvent>(param1: ref.read));
// final slidingPanelControllerProvider = ChangeNotifierProvider.autoDispose((ref) {
//   ref.read(slidingPanelEventProvider).initListeners();
//   ref.onDispose(() => ref.read(slidingPanelEventProvider).closeListeners());
//   return getIt<SlidingPanelController>(param1: ref.read);
// });
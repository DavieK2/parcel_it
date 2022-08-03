// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:event_bus/event_bus.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hooks_riverpod/hooks_riverpod.dart' as _i19;
import 'package:injectable/injectable.dart' as _i2;
import 'package:location/location.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../../app/home/_controller/services_controller.dart' as _i27;
import '../../app/main/_controller/appbar_controller.dart' as _i28;
import '../../app/main/_controller/bottom_navigation_controller.dart' as _i3;
import '../../authentication/_controllers/auth_gate_controller.dart' as _i20;
import '../../authentication/_controllers/otp_controller.dart' as _i12;
import '../../authentication/_controllers/phone_auth_controller.dart' as _i25;
import '../../authentication/_services/auth_service.dart' as _i21;
import '../../authentication/_services/firebase_phone_auth_service.dart' as _i8;
import '../../location/_services/location_service.dart' as _i24;
import '../../ride_hailing/_controllers/address_search_controller.dart' as _i18;
import '../../ride_hailing/_controllers/ride_hailing_controller.dart' as _i26;
import '../../ride_hailing/_controllers/sliding_panel_controller.dart' as _i14;
import '../../user/_controllers/user_controller.dart' as _i16;
import '../../user/_services/firestore_service.dart' as _i23;
import '../../user/_services/user_service.dart' as _i17;
import '../_services/dialog_service.dart' as _i22;
import '../_services/internet_connection_service.dart' as _i9;
import '../_services/navigation_service.dart' as _i11;
import '../_services/third_party_services.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyDependencies = _$ThirdPartyDependencies();
  gh.factory<_i3.BottomNavigationController>(
      () => _i3.BottomNavigationController());
  gh.lazySingleton<_i4.Dio>(() => thirdPartyDependencies.dio);
  gh.lazySingleton<_i5.EventBus>(() => thirdPartyDependencies.eventBus);
  gh.lazySingleton<_i6.FirebaseAuth>(() => thirdPartyDependencies.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => thirdPartyDependencies.firebaseFirestore);
  gh.factory<_i8.FirebasePhoneAuthService>(() => _i8.FirebasePhoneAuthService(
      get<_i6.FirebaseAuth>(),
      get<_i5.EventBus>(),
      get<_i4.Dio>(),
      get<_i7.FirebaseFirestore>()));
  gh.lazySingleton<_i9.InternetConnectionService>(
      () => _i9.InternetConnectionService(get<_i4.Dio>()));
  gh.lazySingleton<_i10.Location>(() => thirdPartyDependencies.location);
  gh.lazySingleton<_i11.NavigationService>(() => _i11.NavigationService());
  gh.factory<_i12.OTPController>(() => _i12.OTPController());
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => thirdPartyDependencies.localStorage,
      preResolve: true);
  gh.factoryParam<_i14.SlidingPanelController, _i15.Reader, dynamic>(
      (_reader, _) => _i14.SlidingPanelController(_reader));
  gh.factory<_i16.UserController>(() => _i16.UserController(
      get<_i11.NavigationService>(),
      get<_i5.EventBus>(),
      get<_i13.SharedPreferences>()));
  gh.factory<_i17.UserService>(() =>
      _i17.UserService(get<_i5.EventBus>(), get<_i13.SharedPreferences>()));
  gh.factoryParam<_i18.AddressSearchController, _i19.Reader, dynamic>(
      (_read, _) =>
          _i18.AddressSearchController(_read, get<_i13.SharedPreferences>()));
  gh.factory<_i20.AuthGateController>(() => _i20.AuthGateController(
      get<_i5.EventBus>(),
      get<_i11.NavigationService>(),
      get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i21.AuthService>(() => _i21.AuthService(
      get<_i5.EventBus>(),
      get<_i13.SharedPreferences>(),
      get<_i8.FirebasePhoneAuthService>(),
      get<_i11.NavigationService>()));
  gh.lazySingleton<_i22.DialogService>(
      () => _i22.DialogService(get<_i11.NavigationService>()));
  gh.factory<_i23.FirestoreUserService>(() => _i23.FirestoreUserService(
      get<_i7.FirebaseFirestore>(),
      get<_i5.EventBus>(),
      get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i24.LocationService>(() => _i24.LocationService(
      get<_i5.EventBus>(),
      get<_i13.SharedPreferences>(),
      get<_i9.InternetConnectionService>()));
  gh.factoryParam<_i25.PhoneAuthController, _i19.Reader, dynamic>((_read, _) =>
      _i25.PhoneAuthController(_read, get<_i5.EventBus>(),
          get<_i22.DialogService>(), get<_i11.NavigationService>()));
  gh.factoryParam<_i26.RideHailingController, _i15.Reader, dynamic>(
      (_read, _) => _i26.RideHailingController(
          _read, get<_i5.EventBus>(), get<_i13.SharedPreferences>()));
  gh.factory<_i27.ServicesController>(() => _i27.ServicesController(
      get<_i11.NavigationService>(),
      get<_i5.EventBus>(),
      get<_i13.SharedPreferences>(),
      get<_i22.DialogService>(),
      get<_i10.Location>()));
  gh.factory<_i28.AppBarController>(() => _i28.AppBarController(
      get<_i13.SharedPreferences>(), get<_i22.DialogService>()));
  return get;
}

class _$ThirdPartyDependencies extends _i29.ThirdPartyDependencies {}

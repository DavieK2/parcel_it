import 'dart:async';
import 'dart:convert';
import 'package:event_bus/event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_constants/shared_preferences.dart';
import 'package:parcel_it_app/src/core/_services/internet_connection_service.dart';
import 'package:parcel_it_app/src/location/_events/location_service_event.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'location_service.freezed.dart';

@freezed
class LocationServiceType with _$LocationServiceType {
  const factory LocationServiceType.currentLocation() = _CurrentLocation;
  const factory LocationServiceType.streamLocation() = _StreamLocation;
}

@freezed
class LocationError with _$LocationError {
  const factory LocationError.error(String message) = _LocationError;
}

@lazySingleton
class LocationService {
  final EventBus _eventBus;
  final SharedPreferences _localStorage;
  final InternetConnectionService _internetConnectionService;
  StreamSubscription? _streamSubscription;

  LocationPermission? _permission;
  bool? _isUserLocationServiceEnabled;
  late bool _isInternet;
  Position? _position;
  late Function(Position?) _onUserLocation;
  late Function(LocationError) _onError;

  LocationService(this._eventBus, this._localStorage, this._internetConnectionService);

  Future<void> _getCurrentUserLocation({
    required Function(Position?) onUserLocation,
    required Function(LocationError) onError,
  }) async {
    _onUserLocation = onUserLocation;
    _onError = onError;

    _isUserLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (_localStorage.containsKey(SharedPreferencesKey.userLocationSet)) {
      _localStorage.setBool(SharedPreferencesKey.userLocationSet, false);
    }

    if (!_isUserLocationServiceEnabled!) {
      // print(_isUserLocationServiceEnabled);
      // return;
      return _localStorage.containsKey(SharedPreferencesKey.userLocationSet)
          ? _onUserLocation(_position)
          : _onError(const LocationError.error('Please enable your location'));
    }

    _permission = await Geolocator.checkPermission();

    if (_permission == LocationPermission.deniedForever) {
      _localStorage.setBool(SharedPreferencesKey.userLocationSet, false);

      return _localStorage.containsKey(SharedPreferencesKey.userLocationSet)
          ? _onUserLocation(_position)
          : _onError(const LocationError.error('Please enable your location'));
    }

    if (_permission == LocationPermission.denied) {
      _permission = await Geolocator.requestPermission();
    }

    if (_permission == LocationPermission.denied) {
      return _localStorage.containsKey(SharedPreferencesKey.userLocationSet)
          ? _onUserLocation(_position)
          : _onError(const LocationError.error('Please enable your location'));
    }

    _isInternet = await _internetConnectionService.canConnectToInternet();

    if (_isInternet) {
      _position = await Geolocator.getCurrentPosition();
      List<Placemark> _placemarks = await placemarkFromCoordinates(_position!.latitude, _position!.longitude);

      await _localStorage.setString(
        SharedPreferencesKey.userLocationCountryAndCity,
        "${_placemarks[0].country!}, ${_placemarks[0].locality}",
      );
      await _localStorage.setString(SharedPreferencesKey.userCurrentAddress, _placemarks[2].street ?? '');
      await _localStorage.setString(
        SharedPreferencesKey.userCoordinates,
        jsonEncode({"latitude": _position!.latitude, "longitude": _position!.longitude}),
      );
      await _localStorage.setBool(SharedPreferencesKey.userLocationSet, true);

      return _onUserLocation(_position);
    } else {
      return _localStorage.containsKey(SharedPreferencesKey.userLocationSet)
          ? _onUserLocation(_position)
          : _onError(const LocationError.error('Please enable your location'));
    }
  }

  void initListeners() {
    _streamSubscription ??= _eventBus.on<LocationServiceEvent>().listen(
      (event) {
        event.when(
          getUserCurrentLocation: (
            locationServiceType,
            onUserLocation,
            onError,
          ) =>
              locationServiceType.when(
            currentLocation: () => _getCurrentUserLocation(
              onUserLocation: onUserLocation,
              onError: onError,
            ),
            streamLocation: () {},
          ),
        );
      },
    );
  }
}

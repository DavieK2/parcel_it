import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parcel_it_app/src/location/_services/location_service.dart';
part 'location_service_event.freezed.dart';

@freezed
class LocationServiceEvent with _$LocationServiceEvent {
  const factory LocationServiceEvent.getUserCurrentLocation({
    required LocationServiceType type,
    required Function(Position?) onUserLocation,
    required Function(LocationError) onError,
  }) = _GetUserCurrentLocation;
}

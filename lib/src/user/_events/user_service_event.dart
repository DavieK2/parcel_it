import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
import 'package:parcel_it_app/src/user/_service_providers/user_service_provider.dart';
part 'user_service_event.freezed.dart';

@freezed
class UserServiceEvent with _$UserServiceEvent {
  const factory UserServiceEvent.updateUserProfile(
      {required UserServiceProvider userServiceProvider, required UserModel user}) = _UpdateUserProfile;
}

@freezed
class UserServiceEventResponse with _$UserServiceEventResponse {
  const factory UserServiceEventResponse.userProfileUpdated() = _UpdateUserProfileUpdated;
  const factory UserServiceEventResponse.userProfileUpdateFailed({required String message}) =
      _UpdateUserProfileUpdateFailed;
}

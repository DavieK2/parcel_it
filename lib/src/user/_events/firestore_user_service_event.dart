import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
part 'firestore_user_service_event.freezed.dart';

@freezed
class FirestoreUserServiceEvent with _$FirestoreUserServiceEvent {
  const factory FirestoreUserServiceEvent.updateUserProfile({required UserModel user}) = _UpdateUserProfile;
}

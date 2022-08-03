import 'package:parcel_it_app/src/authentication/_models/user_model.dart';

abstract class UserServiceInterface {
  Future<void> updateUserProfile(UserModel user);
}

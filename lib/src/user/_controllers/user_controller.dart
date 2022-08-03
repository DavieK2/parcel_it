import 'dart:convert';

import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/app/main/_views/app_screen.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:parcel_it_app/src/user/_events/user_service_event.dart';
import 'package:parcel_it_app/src/user/_service_providers/user_service_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'user_controller.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.intial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.error({required String message}) = _Error;
}

@injectable
class UserController extends StateNotifier<UserState> {
  UserController(
    this._navigationService,
    this._eventBus,
    this._localStorage,
  ) : super(const UserState.intial());

  final NavigationService _navigationService;
  final EventBus _eventBus;
  final SharedPreferences _localStorage;

  Future<void> updateUserProfile(String firstName, String lastName, String email, String phoneNumber) async {
    debugPrint('this is from profile setup screen reached');
    String _localUserFromStorge = _localStorage.getString('localUser')!;
    Map<String, dynamic> _localUser = jsonDecode(_localUserFromStorge);
    String _localUserId = UserModel.fromJson(_localUser).uid;
    UserModel _user = UserModel(
      uid: _localUserId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      hasRegisteredProfile: true,
    );

    _eventBus.fire(
      UserServiceEvent.updateUserProfile(
        userServiceProvider: const UserServiceProvider.firestore(),
        user: _user,
      ),
    );
  }

  void _userProfileUpdated() => _navigationService.push(const Routes.app(), AppScreen.route);
  void _userProfileUpdateFailed(String message) {
    debugPrint("This is from profile setup screen $message");
  }

  void initListeners() {
    _eventBus.on<UserServiceEventResponse>().listen(
          (event) => event.when(
            userProfileUpdated: () => _userProfileUpdated(),
            userProfileUpdateFailed: (message) => _userProfileUpdateFailed(message),
          ),
        );
  }
}

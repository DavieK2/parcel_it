import 'dart:async';
import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/user/_events/firestore_user_service_event.dart';
import 'package:parcel_it_app/src/user/_events/user_service_event.dart';
import 'package:parcel_it_app/src/user/_services/firestore_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UserService {
  late StreamSubscription _streamSubscription;
  final EventBus _eventBus;
  final SharedPreferences _localStorage;

  UserService(this._eventBus, this._localStorage);

  void initListeners() {
    _streamSubscription = _eventBus.on<UserServiceEvent>().listen((event) {
      event.when(
        updateUserProfile: (userProvider, user) {
          userProvider.when(
            firestore: () {
              getIt<FirestoreUserService>().init();
              _eventBus.fire(FirestoreUserServiceEvent.updateUserProfile(user: user));
            },
          );
        },
      );
    });
  }

  void close() {
    getIt<FirestoreUserService>().close();
    _streamSubscription.cancel();
  }
}

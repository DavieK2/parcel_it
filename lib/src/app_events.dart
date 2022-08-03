import 'package:event_bus/event_bus.dart';
import 'package:parcel_it_app/src/authentication/_services/auth_service.dart';
import 'package:parcel_it_app/src/core/_events/app_events.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/location/_services/location_service.dart';

void initAppEvents() {
  getIt<EventBus>().on<AppEvent>().listen(
        (event) => event.when(
          initAppServices: () {
            getIt<AuthService>().initListeners();
            getIt<LocationService>().initListeners();
            return null;
            // getIt<UserService>().initListeners();
            // getIt<PhoneAuthController>().initListeners();
            // getIt<UserController>().initListeners();
          },
          closeAuthenticationServices: () {
            return null;
          },
        ),
      );
  getIt<EventBus>().fire(const AppEvent.initAppServices());
}

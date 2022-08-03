import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/app/main/_views/app_screen.dart';
import 'package:parcel_it_app/src/authentication/_events/auth_event.dart';
import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:parcel_it_app/src/core/_views/error_page.dart';
import 'package:parcel_it_app/src/location/_events/location_service_event.dart';
import 'package:parcel_it_app/src/location/_services/location_service.dart';
import 'package:parcel_it_app/src/onboarding/_views/welcome_screen.dart';
import 'package:parcel_it_app/src/user/_views/profile_setup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AuthGateController {
  final EventBus _eventBus;
  final NavigationService _navigationService;
  final SharedPreferences _localStorage;

  AuthGateController(this._eventBus, this._navigationService, this._localStorage);

  void getUserCredentials() {
    _eventBus.fire(
      AuthEvents.getUserCredentials(
        onNoUserRecordFound: _noUserRecordFound,
        onUserHasNotCompletedProfileRegistration: _userHasNotCompletedProfileRegistration,
        onUserCredentialsReceived: _userIsAuthenticated,
        onUserHasNotBeenOnboarded: _userHasNotBeenOnboarded,
      ),
    );
  }

  void _userHasNotBeenOnboarded() => _navigationService.push(const Routes.onboarding(), Onboarding.route);

  void _noUserRecordFound() => _navigationService.push(const Routes.auth(), PhoneAuthScreen.route);

  void _userHasNotCompletedProfileRegistration() =>
      _navigationService.push(const Routes.profileSetup(), ProfileSetupScreen.route);

  void _userIsAuthenticated() {
    _eventBus.fire(
      LocationServiceEvent.getUserCurrentLocation(
        type: const LocationServiceType.currentLocation(),
        onUserLocation: (location) {
          print('auth gate');
          _navigationService.push(const Routes.app(), AppScreen.route);
        },
        onError: (error) =>
            _navigationService.push(const Routes.errorPage(ErrorPageType.locationError()), ErrorPage.route),
      ),
    );
  }
}

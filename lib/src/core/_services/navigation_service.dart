import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/app/main/_views/app_screen.dart';
import 'package:parcel_it_app/src/authentication/_views/auth_gate_screen.dart';
import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
import 'package:parcel_it_app/src/core/_views/error_page.dart';
import 'package:parcel_it_app/src/onboarding/_views/welcome_screen.dart';
import 'package:parcel_it_app/src/ride_hailing/_views/ride_hailing_home_screen.dart';
import 'package:parcel_it_app/src/user/_views/profile_setup_screen.dart';
part 'navigation_service.freezed.dart';

@freezed
class Routes with _$Routes {
  const factory Routes.authGate() = _AuthGate;
  const factory Routes.onboarding() = _Onboarding;
  const factory Routes.auth() = _Auth;
  const factory Routes.profileSetup() = _ProfileSetup;
  const factory Routes.app() = _App;
  const factory Routes.rideHailing() = _RideHailing;
  const factory Routes.errorPage(ErrorPageType errorPageType) = _ErrorPage;
}

@freezed
class ErrorPageType with _$ErrorPageType {
  const factory ErrorPageType.noInternet() = _NoInternet;
  const factory ErrorPageType.locationError() = _LocationError;
}

@freezed
class Transitions with _$Transitions {
  const factory Transitions.slide() = _Slide;
  const factory Transitions.scaleAndFade() = _ScaleAndFade;
}

@lazySingleton
class NavigationService {
  final GlobalKey<NavigatorState> _navigationStateKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigationStateKey => _navigationStateKey;
  late Routes _routes;
  late Transitions _transitions;

  void to(
    Routes routeName, {
    Transitions? transition,
    Duration? duration,
  }) {
    _navigationStateKey.currentState?.push(
      _createRoute(routeName, transition: transition, duration: duration),
    );
  }

  void push(
    Routes route,
    String routeName, {
    Transitions? transition,
    Duration? duration,
  }) {
    _navigationStateKey.currentState?.pushAndRemoveUntil(
      _createRoute(route, transition: transition, duration: duration),
      ModalRoute.withName(routeName),
    );
  }

  Route _createRoute(Routes route, {Transitions? transition, Duration? duration}) {
    _routes = route;
    _transitions = transition ?? const Transitions.scaleAndFade();

    Widget _route = _routes.maybeWhen(
      authGate: () => const AuthGate(),
      onboarding: () => const Onboarding(),
      auth: () => const PhoneAuthScreen(),
      profileSetup: () => const ProfileSetupScreen(),
      app: () => const AppScreen(),
      rideHailing: () => const RideHailingHomeScreen(),
      errorPage: (errorPage) => ErrorPage(
        errorPageType: errorPage,
      ),
      orElse: () => Container(
        child: const Text('Not Found'),
        color: Colors.white,
      ),
    );

    return PageRouteBuilder(
      reverseTransitionDuration: const Duration(milliseconds: 200),
      transitionDuration: duration ?? const Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => _route,
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        const scaleTweenBegin = 0.95;
        const scaleTweenEnd = 1.0;
        const opacityTweenBegin = 0.7;
        const opacityTweenEnd = 1.0;

        const slideTweenBegin = Offset(1.0, 0.0);
        const slideTweenEnd = Offset.zero;
        Animatable<Offset> slideTween = Tween(begin: slideTweenBegin, end: slideTweenEnd).chain(
          CurveTween(curve: Curves.easeInCirc),
        );
        Animatable<double> scaleTween = Tween(begin: scaleTweenBegin, end: scaleTweenEnd).chain(
          CurveTween(curve: Curves.easeInCirc),
        );

        Animatable<double> opacityTween = Tween(begin: opacityTweenBegin, end: opacityTweenEnd).chain(
          CurveTween(curve: Curves.easeInCirc),
        );

        return _transitions.when(
          scaleAndFade: () => ScaleTransition(
            scale: scaleTween.animate(animation),
            child: ScaleTransition(
              scale: Tween<double>(
                begin: 1.0,
                end: 1.01,
              ).chain(CurveTween(curve: Curves.fastOutSlowIn)).animate(secondaryAnimation),
              child: FadeTransition(
                opacity: opacityTween.animate(animation),
                child: child,
              ),
            ),
          ),
          slide: () => SlideTransition(
            position: slideTween.animate(animation),
            child: child,
          ),
        );
      },
    );
  }
}

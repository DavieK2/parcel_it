// import 'package:beamer/beamer.dart';
// import 'package:flutter/foundation.dart';
// import 'package:parcel_it_app/src/app/main/_views/app_screen.dart';
// import 'package:parcel_it_app/src/authentication/_views/auth_gate_screen.dart';
// import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
// import 'package:parcel_it_app/src/onboarding/_views/welcome_screen.dart';
// import 'package:parcel_it_app/src/ride_hailing/_views/home.dart';
// import 'package:parcel_it_app/src/user/_views/profile_setup_screen.dart';

// final routerDelegate = BeamerDelegate(
//   initialPath: WelcomeScreen.route,
//   locationBuilder: RoutesLocationBuilder(
//     routes: {
//       // Return either Widgets or BeamPages if more customization is needed
//       AuthGate.route: (context, state, data) => const AuthGate(),
//       WelcomeScreen.route: (context, state, data) => const WelcomeScreen(),
//       PhoneAuthScreen.route: (context, state, data) => const BeamPage(
//             type: BeamPageType.slideRightTransition,
//             child: PhoneAuthScreen(),
//           ),
//       ProfileSetupScreen.route: (context, state, data) => const ProfileSetupScreen(),
//       AppScreen.route: (context, state, data) => const BeamPage(
//             type: BeamPageType.slideRightTransition,
//             child: AppScreen(),
//           ),
//       MapSample.route: (context, state, data) => const BeamPage(
//             type: BeamPageType.slideRightTransition,
//             child: MapSample(),
//           ),
//     },
//   ),
// );

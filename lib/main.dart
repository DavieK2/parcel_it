import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcel_it_app/src/app/home/_views/home_screen.dart';
import 'package:parcel_it_app/src/app/main/_views/app_screen.dart';
import 'package:parcel_it_app/src/app_events.dart';
import 'package:parcel_it_app/src/authentication/_views/auth_gate_screen.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  // _connectToFirebaseEmulator();
  await configureDependencies();
  initAppEvents();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ProviderScope(child: MyApp()));
}

Future _connectToFirebaseEmulator() async {
  const int firebaseAuthPort = 9090;
  const String firestorePort = '8090';
  const String localhost = '192.168.43.35';

  FirebaseFirestore.instance.settings = const Settings(
    host: "$localhost:$firestorePort",
    sslEnabled: false,
    persistenceEnabled: false,
  );
  await FirebaseAuth.instance.useAuthEmulator(localhost, firebaseAuthPort);
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcel IT',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        // fontFamily: 'Montserrat',
      ),
      home: const AuthGate(),
      navigatorKey: getIt<NavigationService>().navigationStateKey,
    );
  }
}

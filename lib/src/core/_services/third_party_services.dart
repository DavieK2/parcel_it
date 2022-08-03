import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ThirdPartyDependencies {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  EventBus get eventBus => EventBus();

  @lazySingleton
  Location get location => Location();

  @preResolve
  Future<SharedPreferences> get localStorage => SharedPreferences.getInstance();
}

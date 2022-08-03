import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:event_bus/event_bus.dart';
import 'package:parcel_it_app/src/authentication/_models/user_model.dart';
import 'package:parcel_it_app/src/user/_events/firestore_user_service_event.dart';
import 'package:parcel_it_app/src/user/_events/user_service_event.dart';
import 'package:parcel_it_app/src/user/_interfaces/user_service_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class FirestoreUserService implements UserServiceInterface {
  final FirebaseFirestore _firebaseFirestore;
  final SharedPreferences _localStorage;
  final EventBus _eventBus;
  late final CollectionReference _collectionReference = _firebaseFirestore.collection('users');
  late StreamSubscription _streamSubscription;

  FirestoreUserService(this._firebaseFirestore, this._eventBus, this._localStorage);

  void init() {
    _streamSubscription = _eventBus.on<FirestoreUserServiceEvent>().listen((event) {
      event.when(
        updateUserProfile: (user) => updateUserProfile(user),
      );
    });
  }

  @protected
  @override
  Future<void> updateUserProfile(UserModel user) async {
    final _userReference = _userReferecne();
    await Task(() => _userReference.doc(user.phoneNumber).update(user.toJson()))
        .attempt()
        .map(
          (either) => either.leftMap(
            (error) => error.toString(),
          ),
        )
        .run()
        .then(
          (result) => result.fold(
              (error) => _eventBus.fire(
                    const UserServiceEventResponse.userProfileUpdateFailed(
                        message: 'There was an eerror updating your profile'),
                  ), (_) async {
            await _localStorage.setString('localUser', jsonEncode(user));
            _eventBus.fire(const UserServiceEventResponse.userProfileUpdated());
          }),
        );
  }

  CollectionReference<UserModel> _userReferecne() {
    return _collectionReference.withConverter<UserModel>(
      fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
      toFirestore: (userModel, _) => userModel.toJson(),
    );
  }

  void close() {
    _streamSubscription.cancel();
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_constants/shared_preferences.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'address_search_controller.freezed.dart';

final userCurrentLocation = Provider<String>((ref) {
  SharedPreferences _localStorage = getIt<SharedPreferences>();
  return _localStorage.getString(SharedPreferencesKey.userCurrentAddress) ?? '';
});

@freezed
class AddressSearchState with _$AddressSearchState {
  const factory AddressSearchState.initial({List? locations}) = _AddressSearchInitial;
  const factory AddressSearchState.loading() = _AddressSearchLoading;
  const factory AddressSearchState.loaded({required List searchResults}) = _AddressSearchLoaded;
}

@injectable
class AddressSearchController extends StateNotifier<AddressSearchState> {
  final SharedPreferences _localStorage;

  final FocusNode pickUpLocationFocusNode = FocusNode();
  final FocusNode dropLocationFocusNode = FocusNode();
  TextEditingController pickUpLocationTextEditingController = TextEditingController();
  final TextEditingController dropOffLocationTextEditingController = TextEditingController();

  Timer? _timer;
  final Reader _read;

  AddressSearchController(@factoryParam this._read, this._localStorage) : super(const AddressSearchState.initial()) {
    pickUpLocationTextEditingController.text = _read(userCurrentLocation);
  }

  void getAddressFromInput(String query) {
    state = const AddressSearchState.loading();
    List _searchResults = [];

    List<String> _addresses = [
      'Unnamed Road One',
      'Unnamed Road Two',
      'Unnamed Road Three',
      'Unnamed Road Four',
      'Unnamed Road Five',
      'Unnamed Road Six',
      'Unnamed Road Seven',
      'Unnamed Road Eight',
      'Unnamed Road Nine',
    ];

    if (_timer != null) _timer?.cancel();

    _timer = Timer(
      const Duration(milliseconds: 500),
      () {
        if (query.isNotEmpty) {
          _searchResults = _addresses.where((address) => address.toLowerCase().contains(query.toLowerCase())).toList();
          state = AddressSearchState.loaded(searchResults: _searchResults);
        } else {
          state = const AddressSearchState.initial();
        }
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_constants/shared_preferences.dart';
import 'package:parcel_it_app/src/core/_services/dialog_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AppBarController extends ChangeNotifier {
  final SharedPreferences _localStorage;
  final DialogService _dialogService;

  String? _userLocation;
  String? get userLocation => _userLocation;

  AppBarController(this._localStorage, this._dialogService) {
    Future.delayed(Duration.zero, () {
      if (!_localStorage.getBool(SharedPreferencesKey.userLocationSet)!) {
        _dialogService.showBottomModalDialog(
          child: const Center(child: Text('Do you want to use the location')),
          height: 0.4,
        );
      }
      _userLocation = _localStorage.getString(SharedPreferencesKey.userLocationCountryAndCity);
      notifyListeners();
    });
  }
}

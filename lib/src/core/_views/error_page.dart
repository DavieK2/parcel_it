import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:parcel_it_app/src/core/_widgets/_error/location_disabled.dart';
import 'package:parcel_it_app/src/core/_widgets/_error/no_internet.dart';
import 'package:parcel_it_app/src/core/_widgets/_error/no_permission.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({Key? key, required this.errorPageType}) : super(key: key);
  final ErrorPageType errorPageType;
  static const route = '/error';
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: errorPageType.when(
        noInternet: () => NoInternetConnection(navigationService: _navigationService),
        locationError: () => LocationError(navigationService: _navigationService),
      ),
    );
  }
}

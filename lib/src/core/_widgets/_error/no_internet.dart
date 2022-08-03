import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/authentication/_views/auth_gate_screen.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({
    Key? key,
    required NavigationService navigationService,
  })  : _navigationService = navigationService,
        super(key: key);

  final NavigationService _navigationService;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No Internet'),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () => _navigationService.push(const Routes.authGate(), AuthGate.route), child: Text('Retry')),
        ],
      ),
    );
  }
}

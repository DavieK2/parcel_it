import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/authentication/_controllers/auth_gate_controller.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({Key? key}) : super(key: key);
  @override
  State<AuthGate> createState() => _AuthGateState();
  static const route = '/';
}

class _AuthGateState extends State<AuthGate> {
  @override
  void initState() {
    super.initState();
    getIt<AuthGateController>().getUserCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Authentication Gate'),
      ),
    );
  }
}

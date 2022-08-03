import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcel_it_app/src/authentication/_controllers/phone_auth_controller.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/providers.dart';

class ProfileSetupScreen extends ConsumerWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);
  static const String route = '/profile-setup';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the profile ssetup Screen'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ref.watch(phoneAuthControllerProvider.notifier).signOut(),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

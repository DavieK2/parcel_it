import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcel_it_app/src/app/account/_views/account_screen.dart';
import 'package:parcel_it_app/src/app/activity/_views/activity_screen.dart';
import 'package:parcel_it_app/src/app/home/_views/home_screen.dart';
import 'package:parcel_it_app/src/app/main/_widgets/appbar.dart';
import 'package:parcel_it_app/src/app/main/_widgets/bottom_navigation.dart';
import 'package:parcel_it_app/src/app/payments/_views/payments_screen.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/connectivity_widget.dart';
import 'package:parcel_it_app/src/providers.dart';

class AppScreen extends ConsumerWidget {
  static const route = '/app';
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('rebuild from main screen');
    final _bottomNavigationController = ref.watch(bottomNavigationControllerProvider);
    final _appBarController = ref.watch(appBarControllerProvider);

    return ConnectivityWidget(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        // extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        // appBar: appBar(_appBarController),
        body: _bottomNavigationController.when(
          home: (_) => const Home(),
          activity: (_) => const ActivityScreen(),
          payments: (_) => const PaymentScreen(),
          account: (_) => const AccountScreen(),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}

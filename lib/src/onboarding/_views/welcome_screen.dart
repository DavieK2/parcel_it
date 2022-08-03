import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:parcel_it_app/src/authentication/_views/phone_auth_screen.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/primary_button.dart';

class Onboarding extends StatelessWidget {
  static const route = '/welcome';
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: PrimaryButton(
              onPressed: () =>
                  Navigator.of(context).push(MaterialWithModalsPageRoute(builder: (context) => PhoneAuthScreen())),
              buttonText: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}

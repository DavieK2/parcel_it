import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:parcel_it_app/src/authentication/_widgets/phone_auth_input.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/reactive_button.dart';
import 'package:parcel_it_app/src/core/_widgets/misc/connectivity_widget.dart';
import 'package:parcel_it_app/src/providers.dart';

class PhoneAuthScreen extends StatelessWidget {
  static const String route = '/login';
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConnectivityWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: HookConsumer(
            builder: (_, ref, __) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login/Sign Up',
                    style: kHeadingTextStlye.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Please enter your phone number below:',
                    style: kParagraphTextStlye,
                  ),
                  const SizedBox(height: 30),
                  IgnorePointer(
                    ignoring: ref.watch(phoneAuthControllerProvider).readOnly,
                    child: PhoneAuthenticationInput(
                      readOnly: ref.watch(phoneAuthControllerProvider).readOnly,
                      onChanged: (phone) => ref.watch(phoneAuthControllerProvider.notifier).setPhoneNumber(phone),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ReactiveButton(
                          buttonState: ref.watch(phoneAuthControllerProvider).buttonState,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

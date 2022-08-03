import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/providers.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavigationController = ref.read(bottomNavigationControllerProvider.notifier);
    final bottomNavigationIndex = ref.watch(bottomNavigationControllerProvider);

    return BottomNavigationBar(
      onTap: (index) => bottomNavigationController.goTo(index),
      backgroundColor: Colors.white,
      currentIndex: bottomNavigationIndex.when(
        home: (index) => index,
        activity: (index) => index,
        payments: (index) => index,
        account: (index) => index,
      ),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      selectedLabelStyle: kSubtitleTextStlye.copyWith(fontSize: 11, fontWeight: FontWeight.w600),
      unselectedLabelStyle: kSubtitleTextStlye.copyWith(fontSize: 11),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: kIconUnselectedColor,
      showUnselectedLabels: true,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(Iconsax.home5),
          label: 'Home',
          icon: Icon(
            Iconsax.home_1,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Iconsax.archive5),
          label: 'Activity',
          icon: Icon(Iconsax.archive),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Iconsax.wallet_25),
          label: 'Payments',
          icon: Icon(
            Iconsax.wallet_2,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Iconsax.profile_circle5),
          label: 'Account',
          icon: Icon(
            Iconsax.profile_circle,
          ),
        ),
      ],
    );
  }
}

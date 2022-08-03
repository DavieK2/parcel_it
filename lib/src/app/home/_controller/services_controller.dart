import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:parcel_it_app/src/core/_services/dialog_service.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/primary_button.dart';
import 'package:parcel_it_app/src/location/_events/location_service_event.dart';
import 'package:parcel_it_app/src/location/_services/location_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ServicesController extends ChangeNotifier {
  ServicesController(
    this._navigationService,
    this._eventBus,
    this._localStorage,
    this._dialogService,
    this._location,
  );

  final NavigationService _navigationService;
  final EventBus _eventBus;
  final SharedPreferences _localStorage;
  final DialogService _dialogService;
  final Location _location;
  String _isLoading = '';
  String get loading => _isLoading;

  final List<Map<String, String>> _services = [
    {
      'text': 'Transport',
      'image': 'get_ride',
      'service': 'ride_hailing',
    },
    {
      'text': 'Explore',
      'image': 'explore',
      'service': 'touring',
    },
    {
      'text': 'Express',
      'image': 'delivery_man',
      'service': 'delivery',
    },
    {
      'text': 'Rent A Car',
      'image': 'car_rental',
      'service': 'car_rental',
    },
  ];

  List<Map<String, String>> get services => _services;

  void onTap(String service) {
    if (_isLoading.isEmpty) {
      _isLoading = service;
      notifyListeners();

      _eventBus.fire(
        LocationServiceEvent.getUserCurrentLocation(
          type: const LocationServiceType.currentLocation(),
          onUserLocation: (_) {
            if (service != 'ride_hailing') {
              _isLoading = '';
              notifyListeners();
              return;
            }

            Future.delayed(const Duration(milliseconds: 100), () {
              _navigationService.to(
                const Routes.rideHailing(),
                transition: const Transitions.slide(),
                duration: const Duration(milliseconds: 600),
              );
              _isLoading = '';
            });
          },
          onError: (message) {
            if (service != 'ride_hailing') {
              _isLoading = '';
              notifyListeners();
              return;
            }

            Future.delayed(const Duration(milliseconds: 200), () {
              _isLoading = '';
              notifyListeners();

              _dialogService.showBottomModalDialog(
                child: EnableLocation(
                  dialogService: _dialogService,
                  navigationService: _navigationService,
                  location: _location,
                  onLocationEnabled: () {
                    onTap(service);
                    _dialogService.closeBottomModalDialog();
                  },
                ),
                height: 0.6,
                isDismissable: false,
                enableDrag: false,
                dismissIcon: true,
                onDismiss: _dialogService.closeBottomModalDialog,
              );
            });
          },
        ),
      );
    }
  }

  void resetIsLoading() {
    _isLoading = '';
    notifyListeners();
  }
}

class EnableLocation extends StatelessWidget {
  const EnableLocation({
    Key? key,
    required this.navigationService,
    required this.dialogService,
    required this.location,
    required this.onLocationEnabled,
  }) : super(key: key);

  final NavigationService navigationService;
  final DialogService dialogService;
  final Location location;
  final VoidCallback onLocationEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/23.svg',
                height: 150,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Location Disabled',
            style: kHeadingOneTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '''
Set your location so we can pick you at the right spot and skip this step from now on.''',
            style: kParagraphTextStlye.copyWith(
              fontSize: 14,
              color: kGreyColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: double.maxFinite,
            child: PrimaryButton(
              buttonText: 'Set Automatically',
              buttonColor: kPrimaryColor,
              onPressed: () async {
                bool _serviceEnabled = await location.requestService();
                if (!_serviceEnabled) return;
                onLocationEnabled();
              },
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            child: PrimaryButton(
              elevation: 0,
              buttonText: 'Set Later',
              buttonColor: kLightGreyColor.withOpacity(0.3),
              buttonTextColor: kBlackColor,
              onPressed: () {
                dialogService.closeBottomModalDialog();

                navigationService.to(
                  const Routes.rideHailing(),
                  transition: const Transitions.slide(),
                  duration: const Duration(milliseconds: 600),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

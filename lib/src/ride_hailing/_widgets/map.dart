import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_constants/shared_preferences.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/ride_hailing/_views/test.dart';
import 'package:parcel_it_app/src/core/_widgets/_buttons/circular_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapSample extends StatefulWidget {
  static const String route = '/ride_hailing';
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();
  final SharedPreferences _localStorage = getIt<SharedPreferences>();
  LatLng? _userCurrentLocation;

  CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(34.0522387, -118.2433984),
    zoom: 0,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: TestMapData().endLocation,
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  final Set<Marker> _kMarkers = <Marker>{
    Marker(
      markerId: MarkerId('_testLocation'),
      position: TestMapData().startLocation,
    ),
    Marker(
      markerId: MarkerId('_testLocation1'),
      position: TestMapData().endLocation,
      icon: BitmapDescriptor.defaultMarkerWithHue(20),
    ),
  };

  final Set<Polyline> _kPolylines = <Polyline>{
    Polyline(
      polylineId: PolylineId('_testLocation'),
      points: TestMapData().polylineCoordinates,
      width: 5,
      color: Colors.blue,
    ),
  };

  @override
  void initState() {
    super.initState();

    final String? _userCoordinates = _localStorage.getString(SharedPreferencesKey.userCoordinates);
    if (_userCoordinates != null) {
      final _userLocation = jsonDecode(_userCoordinates);

      _userCurrentLocation = LatLng(_userLocation['latitude']!, _userLocation['longitude']!);
      _initialCameraPosition = CameraPosition(
        target: _userCurrentLocation!,
        zoom: 15,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // 5399 4158 0577 2041 / 992
    // 5399 8326 9347 4862 / 10/23 / 092
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          GoogleMap(
            compassEnabled: false,
            mapToolbarEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            // markers: _kMarkers,
            // polylines: _kPolylines,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.32,
            right: 8,
            height: 50,
            width: 50,
            child: CircularButton(
              onTap: () async {
                final GoogleMapController controller = await _controller.future;

                if (_userCurrentLocation != null) {
                  controller.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target: _userCurrentLocation!,
                        zoom: 15,
                      ),
                    ),
                  );
                }
              },
              child: const Icon(
                Icons.gps_fixed_rounded,
                size: 24,
                color: kIconColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

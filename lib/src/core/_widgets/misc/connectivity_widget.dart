import 'dart:async';
import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/dialog_service.dart';
import 'package:parcel_it_app/src/core/_services/internet_connection_service.dart';

class ConnectivityWidget extends StatefulWidget {
  const ConnectivityWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<ConnectivityWidget> createState() => _ConnectivityWidgetState();
}

class _ConnectivityWidgetState extends State<ConnectivityWidget> {
  final InternetConnectionService _internetConnectionService = getIt<InternetConnectionService>();
  final DialogService _dialogService = getIt<DialogService>();
  late StreamSubscription _streamSubscription;

  bool _noInternetDialogOpen = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => _streamSubscription = _internetConnectionService.internetStream.listen(
        (event) {
          event.when(
            noConnection: () {
              if (!_noInternetDialogOpen) {
                _dialogService.showBottomModalDialog(
                    child: const Text('No Internet'), height: 0.40, dialogtype: DIALOGTYPE.normal);
                _noInternetDialogOpen = true;
              }
            },
            connection: () {
              if (_noInternetDialogOpen) {
                _noInternetDialogOpen = false;
                _dialogService.closeBottomModalDialog();
              }
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild From Connectivity Widget');
    return widget.child;
  }
}

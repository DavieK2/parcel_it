import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_services/navigation_service.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';

enum DIALOGTYPE { normal, otp, internet }

@lazySingleton
class DialogService {
  final NavigationService _navigationService;

  DialogService(this._navigationService);

  void closeBottomModalDialog() {
    _navigationService.navigationStateKey.currentState!.popUntil(
      (route) => route.settings.name == '/modal' ? false : true,
    );
  }

  void showBottomModalDialog({
    required Widget child,
    required double height,
    DIALOGTYPE dialogtype = DIALOGTYPE.normal,
    bool? isDismissable,
    bool? enableDrag,
    bool? dismissIcon,
    Stream<bool>? showHideDismissIcon,
    VoidCallback? onDismiss,
  }) {
    BuildContext _context = _navigationService.navigationStateKey.currentContext as BuildContext;

    closeBottomModalDialog();

    showMaterialModalBottomSheet(
      settings: const RouteSettings(name: '/modal'),
      bounce: true,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInCirc,
      // clipBehavior: Clip.none,
      duration: const Duration(milliseconds: 400),
      isDismissible: isDismissable ?? true,
      enableDrag: enableDrag ?? true,
      context: _context,
      builder: (_) {
        Widget normalDialog = DraggableBottomDialog(
          height: height,
          child: child,
          dismissIcon: dismissIcon,
          onDismiss: onDismiss,
        );

        switch (dialogtype) {
          case DIALOGTYPE.normal:
            return normalDialog;

          case DIALOGTYPE.otp:
            return OTPBottomDialog(
              child: child,
              dismissIcon: dismissIcon,
              onDismiss: onDismiss,
              showHideDissmissIcon: showHideDismissIcon,
            );
          default:
            return normalDialog;
        }
      },
    );
  }
}

class DraggableBottomDialog extends StatelessWidget {
  const DraggableBottomDialog({
    Key? key,
    required this.height,
    required this.child,
    this.showHideDissmissIcon,
    this.dismissIcon = false,
    this.onDismiss,
  }) : super(key: key);

  final double height;
  final bool? dismissIcon;
  final VoidCallback? onDismiss;
  final Widget child;
  final Stream<bool>? showHideDissmissIcon;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight * height,
          width: constraints.maxWidth,
          child: Column(
            children: [
              if (dismissIcon == true)
                SizedBox(
                  height: 40,
                  width: 40,
                  child: GestureDetector(
                    onTap: onDismiss,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 30,
                            color: kGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  child: child,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class OTPBottomDialog extends StatefulWidget {
  const OTPBottomDialog({
    Key? key,
    // required this.height,
    required this.child,
    this.showHideDissmissIcon,
    this.dismissIcon = false,
    this.onDismiss,
  }) : super(key: key);

  // final double height;
  final bool? dismissIcon;
  final VoidCallback? onDismiss;
  final Widget child;
  final Stream<bool>? showHideDissmissIcon;

  @override
  State<OTPBottomDialog> createState() => _OTPBottomDialogState();
}

class _OTPBottomDialogState extends State<OTPBottomDialog> {
  StreamSubscription? _streamSubscription;
  bool? _dismissIcon;

  @override
  void initState() {
    super.initState();
    _dismissIcon = widget.dismissIcon;
    _streamSubscription = widget.showHideDissmissIcon?.listen((event) {
      setState(() => _dismissIcon = event);
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: MediaQuery.of(context).viewInsets.bottom + 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: widget.onDismiss,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AnimatedScale(
                      scale: _dismissIcon == true ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInCirc,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 30,
                          color: kGreyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: widget.child,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

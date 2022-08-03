import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
part 'sliding_panel_controller.freezed.dart';

@freezed
class PanelContentState with _$PanelContentState {
  const factory PanelContentState.panelClosedContent() = _PanelClosedContent;
  const factory PanelContentState.panelOpenedContent() = _PanelOpenedContent;
}

@injectable
class SlidingPanelController extends ChangeNotifier {
  final Reader _reader;
  final PanelController _panelController = PanelController();
  PanelContentState _panelContentState = const PanelContentState.panelClosedContent();

  double _appBarPosition = -250;
  double _panelClosedContentOpacity = 1.0;
  double _panelOpenedContentOpacity = 0.0;
  Color? _bodyBgColor = kPrimaryColor;
  BoxShadow _boxShadow = const BoxShadow();

  SlidingPanelController(@factoryParam this._reader);

  PanelController get panelController => _panelController;
  PanelContentState get panelContentState => _panelContentState;
  double get appBarPosition => _appBarPosition;
  double get panelClosedContentOpacity => _panelClosedContentOpacity;
  double get panelOpenedContentOpacity => _panelOpenedContentOpacity;
  Color? get bodyBgColor => _bodyBgColor;
  BoxShadow get boxShadow => _boxShadow;

  onPanelSlide(double position) {
    _appBarPosition = (250 * position) - 250;
    _panelClosedContentOpacity = (1.0 - position);
    _panelOpenedContentOpacity = (0.95 * position) - 0.95;
    _bodyBgColor = position > 0.2 ? Colors.white : kPrimaryColor;
    _boxShadow = position > 0.9
        ? const BoxShadow(
            offset: Offset(0, 10),
            color: kTertiaryColor,
            blurRadius: 8,
            spreadRadius: -2,
            blurStyle: BlurStyle.normal,
          )
        : const BoxShadow();
    _panelContentState =
        position > 0.95 ? const PanelContentState.panelOpenedContent() : const PanelContentState.panelClosedContent();
    notifyListeners();
  }

  openPanel() => _panelController.open();
  closePanel() => _panelController.close();
  bool panelIsOpen() => _panelController.isPanelOpen;
}

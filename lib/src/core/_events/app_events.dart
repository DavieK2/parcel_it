import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_events.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initAppServices() = _InitAppServices;
  const factory AppEvent.closeAuthenticationServices() = _CloseAuthenticationServices;
}

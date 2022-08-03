import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_service_provider.freezed.dart';

@freezed
class AuthServiceProvider with _$AuthServiceProvider {
  const factory AuthServiceProvider.firebase() = _FireBase;
}

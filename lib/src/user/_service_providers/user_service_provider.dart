import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_service_provider.freezed.dart';

@freezed
class UserServiceProvider with _$UserServiceProvider {
  const factory UserServiceProvider.firestore() = _Firestore;
}

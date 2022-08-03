import 'package:dio/dio.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';

extension InternetExtensions<T> on Future<T> {
  Future checkInternetConnectivity() async {
    Future<Response> checkConnectivity = getIt<Dio>().get('https://google.com');
    // ignore: unnecessary_this
    return this.then((_) => checkConnectivity);
  }
}

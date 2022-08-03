import 'dart:async';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rxdart/rxdart.dart';
part 'internet_connection_service.freezed.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState.noConnection() = _NoConnection;
  const factory InternetState.connection() = _Connection;
}

@lazySingleton
class InternetConnectionService {
  final Dio _dio;
  final StreamController<InternetState> _streamController = BehaviorSubject<InternetState>();
  late StreamSubscription _streamSubscription;
  late Timer _timer;

  Stream<InternetState> get internetStream => _streamController.stream;

  InternetConnectionService(this._dio) {
    _timer = Timer.periodic(const Duration(seconds: 45), (_) => canConnectToInternet());

    _streamSubscription = InternetConnectionChecker().onStatusChange.listen((status) {
      status == InternetConnectionStatus.disconnected
          ? _streamController.add(const InternetState.noConnection())
          : _streamController.add(const InternetState.connection());
    });

    canConnectToInternet();
  }

  Future<bool> canConnectToInternet() async {
    try {
      await _dio.get('https://google.com');
      _streamController.add(const InternetState.connection());
      return true;
    } on DioError catch (_) {
      _streamController.add(const InternetState.noConnection());
      return false;
    }
  }

  // void close() async {
  //   _timer.cancel();
  //   _streamSubscription.cancel();
  // }
}

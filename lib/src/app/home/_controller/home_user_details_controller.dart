// import 'package:event_bus/event_bus.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:injectable/injectable.dart';
// import 'package:parcel_it_app/src/location/_events/location_service_event.dart';

// part 'home_user_details_controller.freezed.dart';

// @freezed
// class HomeLocationDetailsState with _$HomeLocationDetailsState {
//   const factory HomeLocationDetailsState.loading() = _HomeLocationDetailsLoadingState;
//   const factory HomeLocationDetailsState.loaded(String country, String city) = _HomeLocationDetailsLoadedState;
//   const factory HomeLocationDetailsState.error(String message) = _HomeLocationDetailsErrorState;
// }

// @lazySingleton
// class HomeLocationDetailsController extends StateNotifier<HomeLocationDetailsState> {
//   final EventBus _eventBus;
//   HomeLocationDetailsController(this._eventBus) : super(const HomeLocationDetailsState.loading());

//   void initListeners() {
//     _eventBus.on<LLbzRwX15FRFtzR8iZpzjHrXZfBGq3Kdxn>().listen(
//       (event) {
//         event.when(
//           userCurrentLocation: (location) {},
//           error: (message) {},
//         );
//       },
//     );
//   }
// }

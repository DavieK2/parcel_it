import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future configureDependencies() async => await $initGetIt(getIt);

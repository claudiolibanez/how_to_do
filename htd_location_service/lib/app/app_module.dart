import 'package:flutter_modular/flutter_modular.dart';

// location store
import 'package:htd_location_service/app/shared/location/location_store.dart';

//
import 'package:htd_location_service/app/shared/location/services/location_service.dart';
import 'package:htd_location_service/app/shared/location/services/location_service_interface.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<ILocationService>((i) => LocationService()),
    Bind.singleton((i) => LocationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}

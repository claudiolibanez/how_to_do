import 'package:flutter_modular/flutter_modular.dart';

// home module
import 'package:htd_connection_service/app/modules/home/home_module.dart';

// connection store
import 'package:htd_connection_service/app/shared/connection/connection_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ConnectionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}

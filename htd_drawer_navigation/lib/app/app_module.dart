import 'package:flutter_modular/flutter_modular.dart';

// start
import 'package:mobile/app/modules/start/start_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: StartModule()),
  ];
}

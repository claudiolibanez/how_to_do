import 'package:flutter_modular/flutter_modular.dart';

// home
import 'package:mobile/app/modules/start/submodules/home/home_page.dart';
import 'package:mobile/app/modules/start/submodules/home/home_store.dart';

// details
import 'package:mobile/app/modules/start/submodules/home/pages/details_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute(
      '/details',
      child: (_, args) => DetailsPage(),
      transition: TransitionType.rightToLeft,
    ),
  ];
}

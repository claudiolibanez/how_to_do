import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobile/app/modules/start/start_Page.dart';
import 'package:mobile/app/modules/start/start_store.dart';

import 'package:mobile/app/modules/start/submodules/home/home_module.dart';

import 'package:mobile/app/modules/start/pages/settings/settings_page.dart';

import 'package:mobile/app/modules/start/pages/profile/profile_page.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ModuleRoute('/home', module: HomeModule()),
      ChildRoute('/settings', child: (_, args) => SettingsPage()),
      ChildRoute('/profile', child: (_, args) => ProfilePage()),
    ]),
  ];
}

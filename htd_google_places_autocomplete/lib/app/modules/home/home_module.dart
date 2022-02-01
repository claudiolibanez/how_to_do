import 'package:flutter_modular/flutter_modular.dart';
import 'package:googleplacesautocomplete/app/core/services/client/google_places_dio.dart';
import 'package:googleplacesautocomplete/app/modules/home/data/datasources/google_places_data_source_api.dart';
import 'package:googleplacesautocomplete/app/modules/home/data/datasources/places_data_source.dart';
import 'package:googleplacesautocomplete/app/modules/home/data/repositories/places_repository_impl.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/repositories/places_repository.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/usecases/places_use_case.dart';

import 'presenter/pages/home_page.dart';
import 'presenter/stores/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GooglePlacesDio()),
    Bind.lazySingleton<PlacesDataSource>(
        (i) => GooglePlacesDataSourceApi(i.get())),
    Bind.lazySingleton<PlacesRepository>((i) => PlacesRepositoryImpl(i.get())),
    Bind.lazySingleton((i) => PlacesUseCase(i.get())),
    Bind.lazySingleton((i) => HomeStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomePage(),
    ),
  ];
}

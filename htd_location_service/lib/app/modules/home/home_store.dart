import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_location_service/app/shared/location/location_store.dart';
import 'package:htd_location_service/app/shared/location/models/user_location_model.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final LocationStore _locationStore = Modular.get();

  UserLocationModel? get currentLocation => _locationStore.currentLocation;
}

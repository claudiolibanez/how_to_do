import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:location/location.dart';
import 'package:flutter_modular/flutter_modular.dart';

// models
import 'package:htd_location_service/app/shared/location/models/user_location_model.dart';

// interface
import 'package:htd_location_service/app/shared/location/services/location_service_interface.dart';

part 'location_store.g.dart';

class LocationStore = _LocationStoreBase with _$LocationStore;

abstract class _LocationStoreBase with Store {
  final ILocationService _locationService = Modular.get();

  final _locationController = StreamController<UserLocationModel>.broadcast();

  _LocationStoreBase() {
    init();
  }

  @action
  Future<void> init() async {
    await _onLocationChanged();
  }

  @observable
  UserLocationModel? currentLocation;

  @action
  Future<void> _onLocationChanged() async {
    final serviceEnabled = await _locationService.serviceEnabled();

    if (serviceEnabled) {
      final hasPermission = await _locationService.hasPermission();

      if (hasPermission == PermissionStatus.granted) {
        _locationService.getLocation().onLocationChanged.listen(
          (LocationData? locationData) {
            if (locationData != null) {
              _locationController.add(
                UserLocationModel(
                  latitude: locationData.latitude!,
                  longitude: locationData.longitude!,
                ),
              );

              currentLocation = UserLocationModel(
                latitude: locationData.latitude!,
                longitude: locationData.longitude!,
              );
            }
          },
        );
      }
    }
  }

  Stream<UserLocationModel> get locationStream => _locationController.stream;
}

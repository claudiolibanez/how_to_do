import 'package:location/location.dart';

// interface
import 'package:htd_location_service/app/shared/location/services/location_service_interface.dart';

class LocationService implements ILocationService {
  final location = Location();

  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  @override
  Future<bool> serviceEnabled() async {
    try {
      _serviceEnabled = await location.serviceEnabled();

      if (!_serviceEnabled!) {
        _serviceEnabled = await location.requestService();

        if (!_serviceEnabled!) {
          return false;
        }
      }

      return true;
    } catch (err) {
      print("is service enabled: $err");

      rethrow;
    }
  }

  @override
  Future<PermissionStatus> hasPermission() async {
    try {
      _permissionGranted = await location.hasPermission();

      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();

        if (_permissionGranted != PermissionStatus.granted) {
          return _permissionGranted!;
        }
      }

      return _permissionGranted!;
    } catch (err) {
      print("has permission: $err");

      rethrow;
    }
  }

  @override
  Future<LocationData> getLocationData() async {
    try {
      _locationData = await location.getLocation();

      return _locationData!;
    } catch (err) {
      print("get location: $err");

      rethrow;
    }
  }

  @override
  Location getLocation() {
    return location;
  }
}

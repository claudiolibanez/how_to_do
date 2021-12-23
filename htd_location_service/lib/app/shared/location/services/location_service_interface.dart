import 'package:location/location.dart';

abstract class ILocationService {
  Future<bool> serviceEnabled();
  Future<PermissionStatus> hasPermission();
  Future<LocationData> getLocationData();
  Location getLocation();
}

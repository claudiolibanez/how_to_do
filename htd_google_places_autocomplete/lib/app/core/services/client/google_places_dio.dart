import 'package:dio/native_imp.dart';

class GooglePlacesDio extends DioForNative {
  GooglePlacesDio() {
    options.baseUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json";
  }
}

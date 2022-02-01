import 'package:geocoding/geocoding.dart';
import 'package:mobx/mobx.dart';

import 'package:googleplacesautocomplete/app/modules/home/data/models/prediction_model.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/usecases/places_use_case.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final PlacesUseCase _placesUseCase;

  _HomeStoreBase(this._placesUseCase) {
    autorun((_) {
      print(predictions[0].description);
    });
  }

  @observable
  String address = "";
  @action
  void setAddress(String value) => address = value;

  @observable
  String? errorAddress;
  @action
  void setErrorAddress(String value) => errorAddress = value;

  @observable
  ObservableList<PredictionModel> predictions =
      <PredictionModel>[].asObservable();

  @action
  Future<List<PredictionModel>> _getPlaces(String value) async {
    try {
      var params = PlacesUseCaseParams(
        input: value,
      );

      var response = await _placesUseCase.call(params);

      var result = response.fold((l) => l, (r) => r);

      if (result is List<PredictionModel>) {
        predictions.addAll(result);
      } else {
        throw result;
      }

      return predictions;
    } catch (err) {
      rethrow;
    }
  }

  @action
  Future<void> getPlaces(String value) async {
    print(value);
    await _getPlaces(value);
  }

  Future<void> handleNavigationToAddressPage(PredictionModel prediction) async {
    List<Location> locations =
        await locationFromAddress(prediction.description);

    for (var location in locations) {
      print('latitude ${location.latitude}');
      print('longitude ${location.longitude}');
    }

    // for (var term in prediction.terms) {
    //   print(term.value);
    // }
  }
}

class AddressParams {
  final String street;
  final String neighborhood;
  final String city;
  final String state;
  final String country;

  AddressParams({
    required this.street,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.country,
  });
}

import 'package:dio/dio.dart';
import 'package:googleplacesautocomplete/app/core/error/failure.dart';
import 'package:googleplacesautocomplete/app/core/services/client/google_places_dio.dart';
import 'package:googleplacesautocomplete/app/modules/home/data/datasources/places_data_source.dart';
import 'package:googleplacesautocomplete/app/modules/home/data/models/prediction_model.dart';

class GooglePlacesDataSourceApi extends PlacesDataSource {
  final GooglePlacesDio _client;

  GooglePlacesDataSourceApi(this._client);

  @override
  Future<List<PredictionModel>> doSearchPredictions({
    required String input,
  }) async {
    try {
      const apiKey =
          String.fromEnvironment("GOOGLE_PLACES_API_KEY", defaultValue: "");

      if (apiKey.isEmpty) {
        throw GoogleApiFailure();
      }

      var response = await _client.get('', queryParameters: {
        "input": input,
        "types": "address",
        "key": apiKey,
        "language": "pt-BR",
        "components": "country:br"
      });

      var list = response.data["predictions"] as List;

      return list
          .map((prediction) => PredictionModel.fromMap(prediction))
          .toList();
    } on DioError catch (err) {
      print(err);

      throw ServerFailure();
    }
  }
}

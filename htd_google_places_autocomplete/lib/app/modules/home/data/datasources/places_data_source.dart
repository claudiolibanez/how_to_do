import 'package:googleplacesautocomplete/app/modules/home/data/models/prediction_model.dart';

abstract class PlacesDataSource {
  Future<List<PredictionModel>> doSearchPredictions({
    required String input,
  });
}

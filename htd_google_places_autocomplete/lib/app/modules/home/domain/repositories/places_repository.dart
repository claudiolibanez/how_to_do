import 'package:dartz/dartz.dart';

import 'package:googleplacesautocomplete/app/core/error/failure.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/entities/prediction.dart';

abstract class PlacesRepository {
  Future<Either<Failure, List<Prediction>>> doSearchPredictions({
    required String input,
  });
}

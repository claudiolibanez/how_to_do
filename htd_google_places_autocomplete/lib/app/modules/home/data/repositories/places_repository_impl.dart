import 'package:dartz/dartz.dart';
import 'package:googleplacesautocomplete/app/core/error/failure.dart';

import 'package:googleplacesautocomplete/app/modules/home/data/datasources/places_data_source.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/entities/prediction.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/repositories/places_repository.dart';

class PlacesRepositoryImpl implements PlacesRepository {
  final PlacesDataSource _dataSource;

  PlacesRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Prediction>>> doSearchPredictions({
    required String input,
  }) async {
    try {
      var result = await _dataSource.doSearchPredictions(
        input: input,
      );

      return Right(result);
    } on Failure catch (err) {
      return Left(err);
    }
  }
}

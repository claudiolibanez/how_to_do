import 'package:dartz/dartz.dart';

import 'package:googleplacesautocomplete/app/core/error/failure.dart';

import 'package:googleplacesautocomplete/app/core/usecase/use_case.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/entities/prediction.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/repositories/places_repository.dart';

class PlacesUseCaseParams {
  final String input;

  PlacesUseCaseParams({
    required this.input,
  });
}

class PlacesUseCase extends UseCase<List<Prediction>, PlacesUseCaseParams> {
  final PlacesRepository _repository;

  PlacesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Prediction>>> call(
    PlacesUseCaseParams params,
  ) async {
    return await _repository.doSearchPredictions(
      input: params.input,
    );
  }
}

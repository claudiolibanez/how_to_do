import 'dart:convert';

import 'package:googleplacesautocomplete/app/modules/home/data/models/term_model.dart';
import 'package:googleplacesautocomplete/app/modules/home/domain/entities/prediction.dart';

class PredictionModel extends Prediction {
  const PredictionModel({
    required String description,
    required List<TermModel> terms,
  }) : super(
          description: description,
          terms: terms,
        );

  factory PredictionModel.fromMap(Map<String, dynamic> map) {
    return PredictionModel(
      description: map['description'] ?? '',
      terms:
          List<TermModel>.from(map['terms']?.map((x) => TermModel.fromMap(x))),
    );
  }

  factory PredictionModel.fromJson(String source) =>
      PredictionModel.fromMap(json.decode(source));
}

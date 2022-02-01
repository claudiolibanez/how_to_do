import 'dart:convert';

import 'package:googleplacesautocomplete/app/modules/home/domain/entities/term.dart';

class TermModel extends Term {
  const TermModel({
    required String value,
  }) : super(
          value: value,
        );

  factory TermModel.fromMap(Map<String, dynamic> map) {
    return TermModel(
      value: map['value'] ?? '',
    );
  }

  factory TermModel.fromJson(String source) =>
      TermModel.fromMap(json.decode(source));
}

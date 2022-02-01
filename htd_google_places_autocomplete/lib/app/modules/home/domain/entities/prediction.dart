import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:googleplacesautocomplete/app/modules/home/domain/entities/term.dart';

class Prediction extends Equatable {
  final String description;
  final List<Term> terms;

  const Prediction({
    required this.description,
    required this.terms,
  });

  @override
  List<Object> get props => [description, terms];

  Prediction copyWith({
    String? description,
    List<Term>? terms,
  }) {
    return Prediction(
      description: description ?? this.description,
      terms: terms ?? this.terms,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'terms': terms.map((x) => x.toMap()).toList(),
    };
  }

  factory Prediction.fromMap(Map<String, dynamic> map) {
    return Prediction(
      description: map['description'] ?? '',
      terms: List<Term>.from(map['terms']?.map((x) => Term.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prediction.fromJson(String source) =>
      Prediction.fromMap(json.decode(source));

  @override
  String toString() => 'Prediction(description: $description, terms: $terms)';
}

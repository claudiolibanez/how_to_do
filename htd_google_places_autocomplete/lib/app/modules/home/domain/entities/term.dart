import 'dart:convert';

import 'package:equatable/equatable.dart';

class Term extends Equatable {
  final String value;

  const Term({
    required this.value,
  });

  @override
  List<Object> get props => [value];

  Term copyWith({
    String? value,
  }) {
    return Term(
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
    };
  }

  factory Term.fromMap(Map<String, dynamic> map) {
    return Term(
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Term.fromJson(String source) => Term.fromMap(json.decode(source));

  @override
  String toString() => 'Term(value: $value)';
}
